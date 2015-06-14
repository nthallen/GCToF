#include <deque>
#include <stdio.h>

class test_deque {
  public:
    test_deque();
    void run();
    std::deque<int> nums;
    std::deque<int>::const_iterator cur_num;
};

test_deque::test_deque() {}

void test_deque::run() {
  cur_num = nums.begin();
  if (cur_num == nums.end()) {
    printf("begin() of empty deque equals end()\n");
  } else {
    printf("begin() of empty deque does not equal end()\n");
  }
  nums.push_back(7);
  if (cur_num == nums.end()) {
    printf("cur_num equals end() after push_back\n");
  } else {
    printf("cur_num does not equal end() after push_back\n");
    printf("cur_num equals %d after push_back(7)\n", *cur_num);
  }

}

int main(int argc, char **argv) {
  test_deque T;
  T.run();
  return 0;
}

