class MailchimpController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    data = params[:data]

    case params[:type]
    when "profile" then handle_profile_update(data)
    when "subscribe" then handle_subscribe(data)
    when "unsubscribe" then handle_unsubscribe(data)
    else
      puts params[:type]
    end
    render plain: "OK"
  end

  private

  def handle_profile_update(data)
    user = User.find_by(email: data["email"])
    return unless user

    user.mailchimp_id = data["id"]
    user.save
  end

  def handle_subscribe(data)
    user = User.find_by(email: data["email"])
    binding.pry
    return unless user

    user.mailchimp_id = data["id"]
    user.newsletter_status = "subscribed"
    user.save
  end

  def handle_unsubscribe(data)
    user = User.find_by(email: data["email"])
    return unless user

    user.mailchimp_id = data["id"]
    user.newsletter_status = "unsubscribed"
    user.save
  end
end
