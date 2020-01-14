// Copyright 2019 Dimontich 

#include "picosha2.h"
#include <boost/log/trivial.hpp>
#include <string>
#include <thread>

void HashFinder()
{
    static const std::string needed_end = "0000";

    while(true)
    {
        std::string random_string = std::to_string(std::rand());
        std::string hash = picosha2::hash256_hex_string(random_string);
        std::string hash_end = hash.substr(hash.size() - needed_end.size());
        if (hash_end == needed_end)
            BOOST_LOG_TRIVIAL(info) << " Is Correct: +  Random_String: '"
            << random_string << "' Hash: '" << hash<<"'";
        else
            BOOST_LOG_TRIVIAL(trace) << " Is Correct: -  Random_String: '"
            << random_string << "' Hash: '" << hash<<"'";
    } 
}