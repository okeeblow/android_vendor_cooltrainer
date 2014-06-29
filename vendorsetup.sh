add_lunch_combo cooltrainer_arm-eng
add_lunch_combo cooltrainer_t0lteatt-eng
add_lunch_combo cooltrainer_t0lteatt-userdebug

export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

(
  cd "$DIR"
  ./fetch-apps.sh
)
