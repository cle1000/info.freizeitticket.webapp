# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

#webcams
every 10.minutes do
	runner "Skiresort.load_webcams"
end

#webcams
every 1.day, :at => '8:31 am' do
	runner "Avalanche.load"
end

#snow_info
every 30.minutes do
	runner "Skiresort.scan_all"
end

#webcams
every 3.hours do
	runner "Skiresort.load_weathers"
end

# Learn more: http://github.com/javan/whenever
