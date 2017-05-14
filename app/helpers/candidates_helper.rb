module CandidatesHelper
  def candidate_info(candidate)
    "#{candidate.name}(年紀：#{candidate.age}, 政黨：#{candidate.party})"
  end
end
