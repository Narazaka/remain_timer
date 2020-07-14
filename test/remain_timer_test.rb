require "test_helper"

describe RemainTimer::RemainTime do
  describe "#to_s" do
    subject { remain_time.to_s }

    describe "filled" do
      let(:remain_time) do
        RemainTimer::RemainTime.new(
          all_duration: 4567,
          past_duration: 1234,
          remain_duration: 3333,
          all_count: 36,
          past_count: 24,
          remain_count: 12,
          duration_format: :chrono,
        )
      end

      it do
        assert { subject == "past: 20:34 / remain: 55:33 / all: 1:16:07 || past: 24 / remain: 12 / all: 36" }
      end
    end

    describe "empty" do
      let(:remain_time) do
        RemainTimer::RemainTime.new(
          all_duration: nil,
          past_duration: 23,
          remain_duration: nil,
          all_count: nil,
          past_count: 24,
          remain_count: nil,
          duration_format: :chrono,
        )
      end

      it do
        assert { subject == "past: 23 / remain: ? / all: ? || past: 24 / remain: ? / all: ?" }
      end
    end
  end
end
