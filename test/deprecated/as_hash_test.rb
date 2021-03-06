require "test_helper"

class AsHashTest < Test::Unit::TestCase
  def test_as_hash
    p = Dish({ a: 1, b: 2 })
 
    err = nil
    out = Capture.stdout do
	    err = Capture.stderr do
        assert_equal({ "a" => 1, "b" => 2}, p.as_hash)
	    end
    end

    assert_match /Dish::Plate#as_hash is deprecated\./, err
  end
end
