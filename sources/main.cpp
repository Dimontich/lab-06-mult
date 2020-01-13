// Copyright 2019 CERZAR

#include <boost/log/utility/setup.hpp>
#include <thread>
#include <vector>
#include "../include/HashFinder.h"

void log_setup() {
    boost::log::register_simple_formatter_factory
            <boost::log::trivial::severity_level, char>("Severity");

    //Setting log ...
    auto FileLog = boost::log::add_file_log(
            // file name
            boost::log::keywords::file_name = "../logs/log_%N.log",
            boost::log::keywords::rotation_size = 4* 1024 * 1024,
            // time file rotation
            boost::log::keywords::time_based_rotation =
                    boost::log::sinks::file::rotation_at_time_point{0, 0, 0},
            // format
            boost::log::keywords::format =
                    "[%TimeStamp%][%Severity%][%ThreadID%]: %Message%");
    auto ConsoleLog = boost::log::add_console_log(
            // console output
            std::cout,
            // format
            boost::log::keywords::format =
                    "[%TimeStamp%][%Severity%][%ThreadID%]: %Message%");

    // Filtration
    FileLog->set_filter(
            boost::log::trivial::severity >= boost::log::trivial::trace);
    ConsoleLog->set_filter(
            boost::log::trivial::severity >= boost::log::trivial::info);
}

int main(int argc, char *argv[]) {
    size_t threads_num = std::thread::hardware_concurrency();
    if (argc > 1)
        threads_num = boost::lexical_cast<size_t>(argv[1]);

    boost::log::add_common_attributes();
    log_setup();

    //boost::log::add_file_log("NewLog.txt");
    //boost::log::add_console_log(std::cout);
    std::vector<std::thread> threads;
    for (size_t i = 0; i < threads_num; i++)
        threads.emplace_back(HashFinder);
    for (std::thread &thread : threads)
        thread.join();
    return 0;
}
