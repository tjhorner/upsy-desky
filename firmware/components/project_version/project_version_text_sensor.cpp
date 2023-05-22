#include "project_version_text_sensor.h"
#include "esphome/core/log.h"
#include "esphome/core/application.h"
#include "esphome/core/version.h"

namespace esphome {
namespace project_version {

static const char *const TAG = "project_version.text_sensor";

void ProjectVersionTextSensor::setup() {
  this->publish_state(ESPHOME_PROJECT_VERSION);
}
float ProjectVersionTextSensor::get_setup_priority() const { return setup_priority::DATA; }
std::string ProjectVersionTextSensor::unique_id() { return get_mac_address() + "-project-version"; }
void ProjectVersionTextSensor::dump_config() { LOG_TEXT_SENSOR("", "Project Version Text Sensor", this); }

}  // namespace version
}  // namespace esphome
