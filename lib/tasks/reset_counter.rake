namespace :vote do
  desc "重置 Counter Cahce"
  task :reset_counter => :environment do
    Candidate.all.each do |candidate|
      Candidate.reset_counters(candidate.id, :vote_logs)
    end
  end
end

