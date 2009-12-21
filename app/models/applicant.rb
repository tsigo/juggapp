# == Schema Information
#
# Table name: applicants
#
#  id                  :integer(4)      not null, primary key
#  status              :string(255)     default("new")
#  user_id             :integer(4)
#  topic_id            :integer(4)
#  first_name          :string(255)
#  age                 :integer(4)
#  time_zone           :string(255)
#  start_sunday        :time
#  end_sunday          :time
#  start_monday        :time
#  end_monday          :time
#  start_tuesday       :time
#  end_tuesday         :time
#  start_wednesday     :time
#  end_wednesday       :time
#  start_thursday      :time
#  end_thursday        :time
#  start_friday        :time
#  end_friday          :time
#  start_saturday      :time
#  end_saturday        :time
#  known_members       :text
#  future_commitments  :text
#  reasons_for_joining :text
#  character_server    :string(255)
#  character_name      :string(255)
#  character_class     :string(255)
#  character_race      :string(255)
#  armory_link         :string(255)
#  original_owner      :boolean(1)
#  previous_guilds     :text
#  reasons_for_leaving :text
#  pve_experience      :text
#  pvp_experience      :text
#  screenshot_link     :string(255)
#  connection_type     :string(255)
#  has_microphone      :boolean(1)
#  has_ventrilo        :boolean(1)
#  uses_ventrilo       :boolean(1)
#  comments            :text
#  created_at          :datetime
#  updated_at          :datetime
#

class Applicant < ActiveRecord::Base
  validates_inclusion_of :status, :in => %w(new denied accepted guilded waiting)
  validates_presence_of :user_id
  validates_presence_of :character_name
end
