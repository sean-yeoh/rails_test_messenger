module MailboxHelper
  def unread_messages_count
    # how to get the number of unread messages for the current user
    # using mailboxer
    current_user.mailbox.inbox({:read => false}).count
    # mailbox.inbox(:unread => true).count(:id, :distinct => true)
  end
end
