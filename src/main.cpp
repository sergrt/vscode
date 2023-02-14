#include <boost/any.hpp>

#include <nlohmann/json.hpp>

#include <iostream>
#include <string>

int main() {
    std::cout << "VS Code skeleton project" << std::endl;

    boost::any t;
    t = std::string("12345");
    std::cout << boost::any_cast<std::string>(t) << std::endl;

    nlohmann::json json;
    json["Key"] = "Value";

    std::cout << json.dump() << std::endl;
    return 0;
}
