project(foo)


add_executable(test_fs main.cpp)

target_compile_features(test_fs PRIVATE cxx_std_17)

