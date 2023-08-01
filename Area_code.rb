dial_book = {
                    "Agra" =>	"562",
                    "Ghaziabad" =>	"120",	
                    "Mysore"=>	"821",
                    "Ahmadabad" =>	"79",	
                    "Gorakhpur"=>	"551",	
                    "Mumbai" =>	"22",
                    "Aligarh" => "571",	
                    "Guntur" =>	"863",	
                    "Nagpur" =>	"712",
                    "Allahabad" =>	"532",	
                    "Gurgaon" => "124",	
                    "Nasik"	=> "253",
                    "Amravati" =>"721",	
                    "Guwahati" => "361",	
                    "Noida"	=> "120",
                    "Amritsar"=> "183",	
                    "Gwalior" =>"751",	
                    "Patna"	=> "612",
                    "Asansol" => "341",	
                    "Hubli-Dharwad" => "836",	
                    "Puducherry" =>	"413",
                    "Aurangabad" =>	"240",	
                    "Hyderabad"	=> "40"	,
                    "Pune"	=> "20",
                    "Bangalore" => "80",	
                    "Indore" =>	"731",	
                    "Raipur" =>	"771",
                    "Bareilly" => "581",	
                    "Jabalpur" => "761",
                    "Rajkot" =>	"281",
                    "Belgaum" => "831",	
                    "Jaipur" =>	"141",
                    "Ranchi" =>	"651",
                    "Bhavnagar" =>	"278",	
                    "Jalandhar"	=> "181",	
                    "Saharanpur" =>	"132",
                    "Bhilai" =>	"788",	
                    "Jammu"	=> "191",	
                    "Salem"	=> "427",
                    "Bhiwandi" => "2522",	
                    "Kannur" =>	"497",	
                    "Siliguri" => "353",
                    "Bhopal" =>	"755",	
                    "Jamshedpur" =>	"657",	
                    "Solapur"	=>"217",
                    "Bhubaneswar"=>	"674",	
                    "Jodhpur"	=>"291",	
                    "Srinagar"	=>"194",
                    "Bikaner"	=>"151",
                    "Kanpur"	=>"512",	
                    "Surat"	=>"261",
                    "Calcutta" => "33",	
                    "Kochi"	=> "484",	
                    "Thrissur" => "487",
                    "Calicut" => "495",	
                    "Kollam Quilon" => "474",	
                    "Tiruchirappalli Trichy" =>  "431",
                    "Chandigarh" =>	"172",	
                    "Kota"	=> "744",	
                    "Tiruppur"	=> "421",
                    "Coimbatore" =>	"422",	
                    "Lucknow" =>	"522",	
                    "Trivandrum" =>	"471",
                    "Cuttack" =>	"671",	
                    "Ludhiana" =>	"161",	
                    "Vadodara" =>	"265",
                    "Dehradun" =>	"135",	
                    "Madurai" => 	"452",	
                    "Varanasi" =>	"542",
                    "Delhi"	=> "11",	
                    "Malappuram" =>	"483",	
                    "Vasai-Virar" => "250",
                    "Dhanbad" =>	"326",	
                    "Mangalore"	=> "824",	
                    "Vijayawada" =>	"866",
                    "Faizabad" =>	"5278",	
                    "Meerut" =>	"121",	
                    "Visakhapatnam" =>	"891",
                    "Faridabad"	=> "129",	
                    "Moradabad"	=> "591",	
                    "Warangal"	=> "870"
}
 
# Get city names from the hash
def get_city_names(somehash)
    somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash[key]
end
 
# Execution flow
loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts get_city_names(dial_book)
    puts "Enter the city name"
    prompt = gets.chomp
    if dial_book.include?(prompt)
        puts "The area code for the city #{prompt} is #{get_area_code(dial_book,prompt)}"
    else
        puts "you entered an invalid city name"
    end

end
