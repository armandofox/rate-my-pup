class EmailTemplate < ActiveRecord::Base
    #Iter3-2 restricted assignment (By Gung Hiu Ho)
    attr_accessible :title
    attr_accessible :body
    attr_accessible :created_at
    attr_accessible :updated_at
    attr_accessible :marked

    #private
    def EmailTemplate.all_emails
      return EmailTemplate.select('title').map{ |e| e.title }.to_a
    end

    def EmailTemplate.is_valid_email(title)
      EmailTemplate.all_emails.include? title
    end

    def EmailTemplate.find_by_email_field(field, text)
      query_dictionary = {
        'title' => 'title = ?',
        'body' => 'body = ?'
      }
      if query_dictionary[field] == nil
        raise 'Invalid field in query: ' + field
      end
      result = EmailTemplate.where(query_dictionary[field], text).first

      if !result
        return nil
      end
      return result
    end
end
