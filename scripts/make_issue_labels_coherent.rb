#!/usr/bin/env ruby
# scripts/make/issue_lables_coherent.rb
# this script takes the labels in the EGI-Federation/ansible-style-guide repo
# and ensures that they are present in all of the repos in the EGI-Federation org
# It is a dirty hack that uses Octokit.rb to interact with the GitHub API.
# You got a better idea!? Send PR. no, seriously.

# Don't forget to set your G
require 'octokit'
require 'awesome_print'
token = ENV['OCTOKIT_GITHUB_TOKEN']
client = Octokit::Client.new :access_token => token

# Get the list of labels that should exist, with their metadata
labels = client.labels('EGI-Federation/ansible-style-guide')
repos = client.repos('EGI-Federation')

repos.each do |repo|
  labels.each do |label|
    begin
      client.add_label(repo.full_name, label.name, label.color)
    rescue Octokit::UnprocessableEntity => e
      ap e
      client.update_label(repo.full_name, "#{label.name}", {:color => label.color})
    rescue Octokit::BadRequest => e
      ap e
    end
  end
end
