module DownloadHelpers
    TIMEOUT = 1
    PATH    = Rails.root.join("tmp/downloads")
  
    extend self
  
    def downloads
      Dir[PATH.join("*")]
    end
  
    def download
      downloads.first
    end
  
    def download_content
      wait_for_download
      File.read(download)
    end
  
    def wait_for_download
      Timeout.timeout(TIMEOUT) do
        sleep 13 until downloaded?
      end
    end
  
    def downloaded?
      !downloading? && downloads.any?
    end
  
    def downloading?
      downloads.grep(/\.part$/).any?
    end
  
    def clear_downloads
      # TODO: re-enable clearing below
      # FileUtils.rm_f(downloads)
    end
  end