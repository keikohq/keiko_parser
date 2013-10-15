module Keiko

  module Parser

    class Finder

      def self.extract(url, root_xpath, options={})

        # Load the URL
        document = Nokogiri::HTML(open(url))

        # Routes' list :: //*[@id="column_l"]/table/tr[2]/td[2]
        # Retrieve the subtree rooted on given the xpath
        subtree = document.at_xpath(root_xpath)

      end

    end

  end

end