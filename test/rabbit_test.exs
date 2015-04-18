defmodule RabbitTest do
  use ExUnit.Case

  """
  	Uni to Zawgyi Test
  """

  test "uni to zawgyi - case one" do
    assert Rabbit.uni2zg("မင်္ဂလာပါ") == "မဂၤလာပါ"
  end

  test "uni to zawgyi - case two" do
    assert Rabbit.uni2zg("သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ်ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေးဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။") == "သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝဍ္ဎနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘးဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။"
  end

  test "uni to zawgyi - case three" do
    assert Rabbit.uni2zg("ယေဓမ္မာ ဟေတုပ္ပဘဝါ တေသံ ဟေတုံ တထာဂတော အာဟ တေသဉ္စ ယောနိရောဓေါ ဧဝံ ဝါဒီ မဟာသမဏော။") == "ေယဓမၼာ ေဟတုပၸဘဝါ ေတသံ ေဟတုံ တထာဂေတာ အာဟ ေတသၪၥ ေယာနိေရာေဓါ ဧဝံ ဝါဒီ မဟာသမေဏာ။"
  end

  test "uni to zawgyi - case four" do
    assert Rabbit.uni2zg("မြန်မာလိုပြောမယ်လကွာ") == "ျမန္မာလိုေျပာမယ္လကြာ"
  end

  test "uni to zawgyi - case five" do
    assert Rabbit.uni2zg("ဘောလုံးကန်တာမှ ကောင်းဦးမယ်") == "ေဘာလုံးကန္တာမွ ေကာင္းဦးမယ္"
  end

  test "uni to zawgyi - case six" do
    assert Rabbit.uni2zg("Rabbit ကွန်ဗက်တာကို သိလား") == "Rabbit ကြန္ဗက္တာကို သိလား"
  end

  """
  	Zawgyi to Uni test
  """

  test "zawgyi to uni - case one" do
    assert Rabbit.zg2uni("မဂၤလာပါ") == "မင်္ဂလာပါ"
  end

  test "zawgyi to uni - case two" do
    assert Rabbit.zg2uni("သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝဍ္ဎနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘးဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။") == "သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ်ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေးဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။"
  end

  test "zawgyi to uni - case three" do
    assert Rabbit.zg2uni("ေယဓမၼာ ေဟတုပၸဘဝါ ေတသံ ေဟတုံ တထာဂေတာ အာဟ ေတသၪၥ ေယာနိေရာေဓါ ဧဝံ ဝါဒီ မဟာသမေဏာ။") == "ယေဓမ္မာ ဟေတုပ္ပဘဝါ တေသံ ဟေတုံ တထာဂတော အာဟ တေသဉ္စ ယောနိရောဓေါ ဧဝံ ဝါဒီ မဟာသမဏော။"
  end

  test "zawgyi to uni - case four" do
    assert Rabbit.zg2uni("ျမန္မာလိုေျပာမယ္လကြာ") == "မြန်မာလိုပြောမယ်လကွာ"
  end

  test "zawgyi to uni - case five" do
    assert Rabbit.zg2uni("ေဘာလုံးကန္တာမွ ေကာင္းဦးမယ္") == "ဘောလုံးကန်တာမှ ကောင်းဦးမယ်"
  end

  test "zawgyi to uni - case six" do
    assert Rabbit.zg2uni("Rabbit ကြန္ဗက္တာကို သိလား") == "Rabbit ကွန်ဗက်တာကို သိလား"
  end

end
