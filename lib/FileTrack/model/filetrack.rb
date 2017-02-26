module FileTrack
  module Model
    class << self
      def create_table
        db = Sequel.sqlite

        db.create_table :file_path do
          primary_key :id
          String      :ip, :unique
          String      :username, size: 30
          String      :md5sum
          String      :path, size: 255
          String      :fileName, size: 64
          Timestamp   :datetime

          index [:id, :fileName, :path]
        end
      end
    end
    end
end
