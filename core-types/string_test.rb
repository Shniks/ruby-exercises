# encoding: utf-8
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class StringTest < Minitest::Test
  def test_capitalize
    assert_equal "Alice", "alice".capitalize
    assert_equal "Alice smith", "alice smith".capitalize
  end

  def test_upcase

    assert_equal "RUN!", "run!".upcase
  end

  def test_downcase

    assert_equal "i'm over here", "I'M OVER HERE".downcase
  end

  def test_check_if_all_caps #HOW TO PUT TRUE OR FALSE VALUE BELOW?
    skip
    maybe "abc".upcase == "abc"
    maybe "ABC".upcase == "ABC"
    maybe "Hæ?".upcase == "Hæ?"
    maybe "1, 2, 3".upcase == "1, 2, 3"
  end

  def test_if_all_lowercase #HOW TO PUT TRUE OR FALSE VALUE BELOW?
    skip
    maybe "abc".downcase == "abc"
    maybe "ABC".downcase == "ABC"
    maybe "Æsj!".downcase == "Æsj!"
    maybe "1, 2, 3".downcase == "1, 2, 3"
  end

  def test_upper_and_lower_case #HOW TO PUT TRUE OR FALSE VALUE BELOW?
    skip
    maybe "abc".downcase == "abc".upcase
    maybe "1, 2, 3".downcase == "1, 2, 3".upcase
    maybe "%$#!!1!".downcase == "%$#!!1!".upcase
  end

  def test_chop

    assert_equal "hello!!", "hello!!!".chop
    assert_equal "hello?", "hello?!".chop
    assert_equal "hello", "hello.".chop
    assert_equal "hell", "hello".chop
  end

  def test_chomp

    assert_equal "go\n", "go\n\n".chomp
    assert_equal "go", "go\n".chomp
    assert_equal "go", "go".chomp
  end

  def test_delete
    skip
    assert_equal __, "eeny, meeny, miny, moe".delete("e")
    assert_equal __, "eeny, meeny, miny, moe".delete("m")
    assert_equal __, "eeny, meeny, miny, moe".delete("n")
  end

  def test_reverse

    assert_equal "!1!!NUF HCUM OS GMOZ", "ZOMG SO MUCH FUN!!1!".reverse
    assert_equal "seip ylbbub", "bubbly pies".reverse
    assert_equal "racecar", "racecar".reverse
  end

  def test_squeeze

    assert_equal "Grany jugles pupies in the monlight", "Granny juggles puppies in the moonlight".squeeze
    assert_equal "Sunny summer days playing hops on the rof", "Sunny summer days playing hoops on the roof".squeeze('o')
    assert_equal "You fool! You canot choose to cook chese with a spoon", "You fool! You cannot choose to cook cheese with a spoon".squeeze('ne')
    assert_equal "Her name was Betty Moore", "Her name      was Betty Moore".squeeze(" ")
  end

  def test_strip

    assert_equal "to the    moon", "   \n  \tto the    moon\n\n\t    ".strip
    assert_equal "   \n  \tto the    moon", "   \n  \tto the    moon\n\n\t    ".rstrip
    assert_equal "to the    moon\n\n\t    ", "   \n  \tto the    moon\n\n\t    ".lstrip
  end

  def test_next

    assert_equal "b", "a".next
    assert_equal "aa", "z".next
    assert_equal "ab", "aa".next
    assert_equal "ba", "az".next
    assert_equal "aaa", "zz".next
    assert_equal "aB", "aA".next
    assert_equal "aaA", "zZ".next
  end

  def test_length

    assert_equal 0, "".length
    assert_equal 1, "A".length
    assert_equal 1, "Ø".length
    assert_equal 1, "\n".length
    assert_equal 2, "AA".length
    assert_equal 3, "AAA".length
    assert_equal 4, "AAAA".length
    assert_equal 5, "     ".length
  end

  def test_count

    assert_equal 3, "sound of fury signifying nothing".count('o')
    assert_equal 8, "David Cook is frankly unkind".count('aeiou')
  end

  def test_shovel #IMPORTANT

    assert_equal "", "" << ""
    assert_equal "ab", "a" << "b"
    assert_equal "hello?", "hello" << "?"
    assert_equal "hello!", "hello" << 33
  end

  def test_concat

    assert_equal "", "".concat("")
    assert_equal "ab", "a".concat("b")
    assert_equal "hello?", "hello".concat("?")
    assert_equal "hello!", "hello".concat(33)
  end

  def test_plus

    assert_equal "", "" + ""
    assert_equal "ab", "a" + "b"
    assert_equal "hello?", "hello" + "?"
  end

  def test_multiply

    assert_equal "", "" * 3
    assert_equal "!!!", "!" * 3
    assert_equal "ho! ho! ho! ", "ho! " * 3
  end

  def test_center

    s = "abc"
    assert_equal " abc ", s.center(5)
    assert_equal " abc  ", s.center(6)
    assert_equal "   abc   ", s.center(9)
    assert_equal "abc", s.center(2)
  end

  def test_ljust

    s = "abc"
    assert_equal "abc  ", s.ljust(5)
    assert_equal "abc      ", s.ljust(9)
    assert_equal "abc", s.ljust(2)
  end

  def test_rjust

    s = "abc"
    assert_equal "  abc", s.rjust(5)
    assert_equal "      abc", s.rjust(9)
    assert_equal "abc", s.rjust(2)
  end

  def test_empty #HOW TO TEST TRUE OR FALSE?
    skip
    maybe "".empty?
    maybe "  ".empty?
    maybe "\n".empty?
    maybe "a".empty?
  end

  def test_include #HOW TO TEST TRUE OR FALSE?
    skip
    maybe "".include?("a")
    maybe "happy".include?("p")
    maybe "happy".include?("py")
    maybe "happy".include?("hy")
  end

  def test_start_with #HOW TO TEST TRUE OR FALSE?
    skip
    maybe "".start_with?("")
    maybe "hello?".start_with?("?")
    maybe "hello".start_with?("h")
    maybe "hello".start_with?("x")
    maybe "hello".start_with?("hell")
  end

  def test_end_with #HOW TO TEST TRUE OR FALSE?
    skip
    maybe "".end_with?("")
    maybe "coffee?".end_with?("?")
    maybe "coffee".end_with?("e")
    maybe "coffee".end_with?("x")
    maybe "coffee".end_with?("fee")
  end

  def test_index

    assert_equal 0, "purple".index("p")
    assert_equal 1, "purple".index("u")
    assert_equal 5, "purple".index("e")
    assert_equal nil, "purple".index("x")
  end

  def test_square_brackets

    assert_equal "m", "music"[0]
    assert_equal "i", "music"[3]
    assert_equal "c", "music"[-1]
    assert_equal 'i', "music"[-2]
    assert_equal "mu", "music"[0,2]
    assert_equal "si", "music"[2,2]
    assert_equal "mus", "music"[0..2]
    assert_equal "s", "music"[2..2]
    assert_equal "mu", "music"[0...2]
  end

  def test_square_brackets_equal

    s = "cut"
    assert_equal "cut", s
    s[0] = "y"
    assert_equal "yut", s
    s[-1] = "p"
    assert_equal "yup", s
    s[-1] = "k"
    assert_equal "yuk", s
    s[1] = "a"
    assert_equal "yak", s
  end

  def test_interpolation

    s = "world"
    assert_equal "Hello, world!", "Hello, #{s}!"
  end

  def test_format_specification #DO LATER
    skip
    assert_equal __, "" % ""
    assert_equal __, "Be %s" % "safe"
    assert_equal __, "(%s) %s-%s" % ["800", "555", "1234"]
    assert_equal __, "(%2d)" % 45
    assert_equal __, "(%3d)" % 45
    assert_equal __, "(%5d)" % 45
    assert_equal __, "(%05d)" % 45
    assert_equal __, "%{name} is %{age} years old." % {name: "Harry", age: "38"}
    assert_equal __, "%{name} is %{age} years old." % {name: "Harry", age: "38"}
    assert_equal __, "%<years>d years and %<months>.1f months" % {years: 10, months: 3.478}
  end

  def test_tr #IMPORTANT

    assert_equal "could", "would".tr('w', 'c')
    assert_equal "sheild", "should".tr('ou', 'ei')
    assert_equal "wr*t*", "write".tr('aeiou', '*')
    assert_equal "CTUUTGT", "GATTACA".tr('GCTA', 'CGUT')
    assert_equal "        GO ", "1, 2, 3 GO!".tr('^A-Z', ' ')
    assert_equal "GO", "1, 2, 3 GO!".tr('^A-Z', '')
  end

  def test_sub

    assert_equal "ticking", "kicking".sub('k', 't')
    assert_equal "kicking", "kicking".sub('f', 't')
    assert_equal "tocking", "kicking".sub('ki', 'to')
    assert_equal "k*cking", "kicking".sub(/[aeiou]/, '*')
  end

  def test_gsub
    skip
    assert_equal "ticting", "kicking".gsub('k', 't')
    assert_equal "kicking", "kicking".gsub('f', 't')
    assert_equal "toctong", "kicking".gsub('ki', 'to')
    assert_equal "k*ck*ng", "kicking".gsub(/[aeiou]/, '*')
  end
end
