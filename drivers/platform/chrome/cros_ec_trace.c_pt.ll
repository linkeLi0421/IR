; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_trace.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cros_ec_request_start = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cros_ec_request_done = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cros_ec_sensorhub_timestamp = type { %struct.trace_entry, i32, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_cros_ec_sensorhub_data = type { %struct.trace_entry, i32, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_cros_ec_sensorhub_filter = type { %struct.trace_entry, i64, i64, i64, i64, i64, i64, i64, [0 x i8] }
%struct.cros_ec_sensors_ts_filter_state = type { i64, i64, [64 x i64], [64 x i64], [64 x i64], i32, [64 x i64], i64, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cros_ec_request_start = internal constant [22 x i8] c"cros_ec_request_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_request_start = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_request_start }, align 4
@__tracepoint_cros_ec_request_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_cros_ec_request_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cros_ec_request_start, ptr null, ptr @__traceiter_cros_ec_request_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_request_start = internal constant ptr @__tracepoint_cros_ec_request_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_request_done = internal constant [21 x i8] c"cros_ec_request_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_request_done = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_request_done }, align 4
@__tracepoint_cros_ec_request_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_cros_ec_request_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cros_ec_request_done, ptr null, ptr @__traceiter_cros_ec_request_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_request_done = internal constant ptr @__tracepoint_cros_ec_request_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_sensorhub_timestamp = internal constant [28 x i8] c"cros_ec_sensorhub_timestamp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_sensorhub_timestamp = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_sensorhub_timestamp }, align 4
@__tracepoint_cros_ec_sensorhub_timestamp = dso_local global %struct.tracepoint { ptr @__tpstrtab_cros_ec_sensorhub_timestamp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cros_ec_sensorhub_timestamp, ptr null, ptr @__traceiter_cros_ec_sensorhub_timestamp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_sensorhub_timestamp = internal constant ptr @__tracepoint_cros_ec_sensorhub_timestamp, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_sensorhub_data = internal constant [23 x i8] c"cros_ec_sensorhub_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_sensorhub_data = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_sensorhub_data }, align 4
@__tracepoint_cros_ec_sensorhub_data = dso_local global %struct.tracepoint { ptr @__tpstrtab_cros_ec_sensorhub_data, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cros_ec_sensorhub_data, ptr null, ptr @__traceiter_cros_ec_sensorhub_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_sensorhub_data = internal constant ptr @__tracepoint_cros_ec_sensorhub_data, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_sensorhub_filter = internal constant [25 x i8] c"cros_ec_sensorhub_filter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_sensorhub_filter = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_sensorhub_filter }, align 4
@__tracepoint_cros_ec_sensorhub_filter = dso_local global %struct.tracepoint { ptr @__tpstrtab_cros_ec_sensorhub_filter, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cros_ec_sensorhub_filter, ptr null, ptr @__traceiter_cros_ec_sensorhub_filter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_sensorhub_filter = internal constant ptr @__tracepoint_cros_ec_sensorhub_filter, section "__tracepoints_ptrs", align 4
@str__cros_ec__trace_system_name = internal constant [8 x i8] c"cros_ec\00", align 1
@trace_event_fields_cros_ec_request_start = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cros_ec_request_start = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_request_start, ptr @perf_trace_cros_ec_request_start, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_request_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_request_start, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_request_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_request_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_request_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_cros_ec_request_start = internal global [6451 x i8] c"\22version: %u, offset: %d, command: %s, outsize: %u, insize: %u\22, REC->version, REC->offset, __print_symbolic(REC->command, {0x0080, \22EC_CMD_ACPI_READ\22}, {0x0081, \22EC_CMD_ACPI_WRITE\22}, {0x0082, \22EC_CMD_ACPI_BURST_ENABLE\22}, {0x0083, \22EC_CMD_ACPI_BURST_DISABLE\22}, {0x0084, \22EC_CMD_ACPI_QUERY_EVENT\22}, {0x0000, \22EC_CMD_PROTO_VERSION\22}, {0x0001, \22EC_CMD_HELLO\22}, {0x0002, \22EC_CMD_GET_VERSION\22}, {0x0003, \22EC_CMD_READ_TEST\22}, {0x0004, \22EC_CMD_GET_BUILD_INFO\22}, {0x0005, \22EC_CMD_GET_CHIP_INFO\22}, {0x0006, \22EC_CMD_GET_BOARD_VERSION\22}, {0x0007, \22EC_CMD_READ_MEMMAP\22}, {0x0008, \22EC_CMD_GET_CMD_VERSIONS\22}, {0x0009, \22EC_CMD_GET_COMMS_STATUS\22}, {0x000A, \22EC_CMD_TEST_PROTOCOL\22}, {0x000B, \22EC_CMD_GET_PROTOCOL_INFO\22}, {0x000C, \22EC_CMD_GSV_PAUSE_IN_S5\22}, {0x000D, \22EC_CMD_GET_FEATURES\22}, {0x000E, \22EC_CMD_GET_SKU_ID\22}, {0x000F, \22EC_CMD_SET_SKU_ID\22}, {0x0010, \22EC_CMD_FLASH_INFO\22}, {0x0011, \22EC_CMD_FLASH_READ\22}, {0x0012, \22EC_CMD_FLASH_WRITE\22}, {0x0013, \22EC_CMD_FLASH_ERASE\22}, {0x0015, \22EC_CMD_FLASH_PROTECT\22}, {0x0016, \22EC_CMD_FLASH_REGION_INFO\22}, {0x0017, \22EC_CMD_VBNV_CONTEXT\22}, {0x0018, \22EC_CMD_FLASH_SPI_INFO\22}, {0x0019, \22EC_CMD_FLASH_SELECT\22}, {0x0020, \22EC_CMD_PWM_GET_FAN_TARGET_RPM\22}, {0x0021, \22EC_CMD_PWM_SET_FAN_TARGET_RPM\22}, {0x0022, \22EC_CMD_PWM_GET_KEYBOARD_BACKLIGHT\22}, {0x0023, \22EC_CMD_PWM_SET_KEYBOARD_BACKLIGHT\22}, {0x0024, \22EC_CMD_PWM_SET_FAN_DUTY\22}, {0x0025, \22EC_CMD_PWM_SET_DUTY\22}, {0x0026, \22EC_CMD_PWM_GET_DUTY\22}, {0x0028, \22EC_CMD_LIGHTBAR_CMD\22}, {0x0029, \22EC_CMD_LED_CONTROL\22}, {0x002A, \22EC_CMD_VBOOT_HASH\22}, {0x002B, \22EC_CMD_MOTION_SENSE_CMD\22}, {0x002C, \22EC_CMD_FORCE_LID_OPEN\22}, {0x002D, \22EC_CMD_CONFIG_POWER_BUTTON\22}, {0x0030, \22EC_CMD_USB_CHARGE_SET_MODE\22}, {0x0040, \22EC_CMD_PSTORE_INFO\22}, {0x0041, \22EC_CMD_PSTORE_READ\22}, {0x0042, \22EC_CMD_PSTORE_WRITE\22}, {0x0044, \22EC_CMD_RTC_GET_VALUE\22}, {0x0045, \22EC_CMD_RTC_GET_ALARM\22}, {0x0046, \22EC_CMD_RTC_SET_VALUE\22}, {0x0047, \22EC_CMD_RTC_SET_ALARM\22}, {0x0048, \22EC_CMD_PORT80_LAST_BOOT\22}, {0x0048, \22EC_CMD_PORT80_READ\22}, {0x0049, \22EC_CMD_VSTORE_INFO\22}, {0x004A, \22EC_CMD_VSTORE_READ\22}, {0x004B, \22EC_CMD_VSTORE_WRITE\22}, {0x0050, \22EC_CMD_THERMAL_SET_THRESHOLD\22}, {0x0051, \22EC_CMD_THERMAL_GET_THRESHOLD\22}, {0x0052, \22EC_CMD_THERMAL_AUTO_FAN_CTRL\22}, {0x0053, \22EC_CMD_TMP006_GET_CALIBRATION\22}, {0x0054, \22EC_CMD_TMP006_SET_CALIBRATION\22}, {0x0055, \22EC_CMD_TMP006_GET_RAW\22}, {0x0060, \22EC_CMD_MKBP_STATE\22}, {0x0061, \22EC_CMD_MKBP_INFO\22}, {0x0062, \22EC_CMD_MKBP_SIMULATE_KEY\22}, {0x0063, \22EC_CMD_GET_KEYBOARD_ID\22}, {0x0064, \22EC_CMD_MKBP_SET_CONFIG\22}, {0x0065, \22EC_CMD_MKBP_GET_CONFIG\22}, {0x0066, \22EC_CMD_KEYSCAN_SEQ_CTRL\22}, {0x0067, \22EC_CMD_GET_NEXT_EVENT\22}, {0x0068, \22EC_CMD_KEYBOARD_FACTORY_TEST\22}, {0x0070, \22EC_CMD_TEMP_SENSOR_GET_INFO\22}, {0x0087, \22EC_CMD_HOST_EVENT_GET_B\22}, {0x0088, \22EC_CMD_HOST_EVENT_GET_SMI_MASK\22}, {0x0089, \22EC_CMD_HOST_EVENT_GET_SCI_MASK\22}, {0x008D, \22EC_CMD_HOST_EVENT_GET_WAKE_MASK\22}, {0x008A, \22EC_CMD_HOST_EVENT_SET_SMI_MASK\22}, {0x008B, \22EC_CMD_HOST_EVENT_SET_SCI_MASK\22}, {0x008C, \22EC_CMD_HOST_EVENT_CLEAR\22}, {0x008E, \22EC_CMD_HOST_EVENT_SET_WAKE_MASK\22}, {0x008F, \22EC_CMD_HOST_EVENT_CLEAR_B\22}, {0x00A4, \22EC_CMD_HOST_EVENT\22}, {0x0090, \22EC_CMD_SWITCH_ENABLE_BKLIGHT\22}, {0x0091, \22EC_CMD_SWITCH_ENABLE_WIRELESS\22}, {0x0092, \22EC_CMD_GPIO_SET\22}, {0x0093, \22EC_CMD_GPIO_GET\22}, {0x0094, \22EC_CMD_I2C_READ\22}, {0x0095, \22EC_CMD_I2C_WRITE\22}, {0x0096, \22EC_CMD_CHARGE_CONTROL\22}, {0x0097, \22EC_CMD_CONSOLE_SNAPSHOT\22}, {0x0098, \22EC_CMD_CONSOLE_READ\22}, {0x0099, \22EC_CMD_BATTERY_CUT_OFF\22}, {0x009A, \22EC_CMD_USB_MUX\22}, {0x009B, \22EC_CMD_LDO_SET\22}, {0x009C, \22EC_CMD_LDO_GET\22}, {0x009D, \22EC_CMD_POWER_INFO\22}, {0x009E, \22EC_CMD_I2C_PASSTHRU\22}, {0x009F, \22EC_CMD_HANG_DETECT\22}, {0x00A0, \22EC_CMD_CHARGE_STATE\22}, {0x00A1, \22EC_CMD_CHARGE_CURRENT_LIMIT\22}, {0x00A2, \22EC_CMD_EXTERNAL_POWER_LIMIT\22}, {0x00A3, \22EC_CMD_OVERRIDE_DEDICATED_CHARGER_LIMIT\22}, {0x00A8, \22EC_CMD_HIBERNATION_DELAY\22}, {0x00A9, \22EC_CMD_HOST_SLEEP_EVENT\22}, {0x00AA, \22EC_CMD_DEVICE_EVENT\22}, {0x00B0, \22EC_CMD_SB_READ_WORD\22}, {0x00B1, \22EC_CMD_SB_WRITE_WORD\22}, {0x00B2, \22EC_CMD_SB_READ_BLOCK\22}, {0x00B3, \22EC_CMD_SB_WRITE_BLOCK\22}, {0x00B4, \22EC_CMD_BATTERY_VENDOR_PARAM\22}, {0x00B5, \22EC_CMD_SB_FW_UPDATE\22}, {0x00B6, \22EC_CMD_ENTERING_MODE\22}, {0x00B7, \22EC_CMD_I2C_PASSTHRU_PROTECT\22}, {0x00B8, \22EC_CMD_CEC_WRITE_MSG\22}, {0x00BA, \22EC_CMD_CEC_SET\22}, {0x00BB, \22EC_CMD_CEC_GET\22}, {0x00BC, \22EC_CMD_EC_CODEC\22}, {0x00BD, \22EC_CMD_EC_CODEC_DMIC\22}, {0x00BE, \22EC_CMD_EC_CODEC_I2S_RX\22}, {0x00BF, \22EC_CMD_EC_CODEC_WOV\22}, {0x00D2, \22EC_CMD_REBOOT_EC\22}, {0x00D3, \22EC_CMD_GET_PANIC_INFO\22}, {0x00D1, \22EC_CMD_REBOOT\22}, {0x00DB, \22EC_CMD_RESEND_RESPONSE\22}, {0x00DC, \22EC_CMD_VERSION0\22}, {0x0100, \22EC_CMD_PD_EXCHANGE_STATUS\22}, {0x0104, \22EC_CMD_PD_HOST_EVENT_STATUS\22}, {0x0101, \22EC_CMD_USB_PD_CONTROL\22}, {0x0102, \22EC_CMD_USB_PD_PORTS\22}, {0x0103, \22EC_CMD_USB_PD_POWER_INFO\22}, {0x0105, \22EC_CMD_CHARGE_PORT_COUNT\22}, {0x0110, \22EC_CMD_USB_PD_FW_UPDATE\22}, {0x0111, \22EC_CMD_USB_PD_RW_HASH_ENTRY\22}, {0x0112, \22EC_CMD_USB_PD_DEV_INFO\22}, {0x0113, \22EC_CMD_USB_PD_DISCOVERY\22}, {0x0114, \22EC_CMD_PD_CHARGE_PORT_OVERRIDE\22}, {0x0115, \22EC_CMD_PD_GET_LOG_ENTRY\22}, {0x0116, \22EC_CMD_USB_PD_GET_AMODE\22}, {0x0117, \22EC_CMD_USB_PD_SET_AMODE\22}, {0x0118, \22EC_CMD_PD_WRITE_LOG_ENTRY\22}, {0x0119, \22EC_CMD_PD_CONTROL\22}, {0x011A, \22EC_CMD_USB_PD_MUX_INFO\22}, {0x011B, \22EC_CMD_PD_CHIP_INFO\22}, {0x011C, \22EC_CMD_RWSIG_CHECK_STATUS\22}, {0x011D, \22EC_CMD_RWSIG_ACTION\22}, {0x011E, \22EC_CMD_EFS_VERIFY\22}, {0x011F, \22EC_CMD_GET_CROS_BOARD_INFO\22}, {0x0120, \22EC_CMD_SET_CROS_BOARD_INFO\22}, {0x0121, \22EC_CMD_GET_UPTIME_INFO\22}, {0x0122, \22EC_CMD_ADD_ENTROPY\22}, {0x0123, \22EC_CMD_ADC_READ\22}, {0x0124, \22EC_CMD_ROLLBACK_INFO\22}, {0x0125, \22EC_CMD_AP_RESET\22}, {0x012C, \22EC_CMD_REGULATOR_GET_INFO\22}, {0x012D, \22EC_CMD_REGULATOR_ENABLE\22}, {0x012E, \22EC_CMD_REGULATOR_IS_ENABLED\22}, {0x012F, \22EC_CMD_REGULATOR_SET_VOLTAGE\22}, {0x0130, \22EC_CMD_REGULATOR_GET_VOLTAGE\22}, {0x0300, \22EC_CMD_CR51_BASE\22}, {0x03FF, \22EC_CMD_CR51_LAST\22}, {0x0400, \22EC_CMD_FP_PASSTHRU\22}, {0x0402, \22EC_CMD_FP_MODE\22}, {0x0403, \22EC_CMD_FP_INFO\22}, {0x0404, \22EC_CMD_FP_FRAME\22}, {0x0405, \22EC_CMD_FP_TEMPLATE\22}, {0x0406, \22EC_CMD_FP_CONTEXT\22}, {0x0407, \22EC_CMD_FP_STATS\22}, {0x0408, \22EC_CMD_FP_SEED\22}, {0x0409, \22EC_CMD_FP_ENC_STATUS\22}, {0x0500, \22EC_CMD_TP_SELF_TEST\22}, {0x0501, \22EC_CMD_TP_FRAME_INFO\22}, {0x0502, \22EC_CMD_TP_FRAME_SNAPSHOT\22}, {0x0503, \22EC_CMD_TP_FRAME_GET\22}, {0x0600, \22EC_CMD_BATTERY_GET_STATIC\22}, {0x0601, \22EC_CMD_BATTERY_GET_DYNAMIC\22}, {0x0602, \22EC_CMD_CHARGER_CONTROL\22}, {0x3E00, \22EC_CMD_BOARD_SPECIFIC_BASE\22}, {0x3FFF, \22EC_CMD_BOARD_SPECIFIC_LAST\22}), REC->outsize, REC->insize\00", align 1
@event_cros_ec_request_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_request_start, %union.anon.0 { ptr @__tracepoint_cros_ec_request_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_request_start }, ptr @print_fmt_cros_ec_request_start, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cros_ec_request_start = internal global ptr @event_cros_ec_request_start, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_request_done = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.185, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.186, %union.anon { %struct.anon { ptr @.str.187, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cros_ec_request_done = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_request_done, ptr @perf_trace_cros_ec_request_done, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_request_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_request_done, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_request_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_request_done = internal global %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_request_done, ptr null, ptr null, ptr null }, align 4
@print_fmt_cros_ec_request_done = internal global [7520 x i8] c"\22version: %u, offset: %d, command: %s, outsize: %u, insize: %u, ec result: %s, retval: %u\22, REC->version, REC->offset, __print_symbolic(REC->command, {0x0080, \22EC_CMD_ACPI_READ\22}, {0x0081, \22EC_CMD_ACPI_WRITE\22}, {0x0082, \22EC_CMD_ACPI_BURST_ENABLE\22}, {0x0083, \22EC_CMD_ACPI_BURST_DISABLE\22}, {0x0084, \22EC_CMD_ACPI_QUERY_EVENT\22}, {0x0000, \22EC_CMD_PROTO_VERSION\22}, {0x0001, \22EC_CMD_HELLO\22}, {0x0002, \22EC_CMD_GET_VERSION\22}, {0x0003, \22EC_CMD_READ_TEST\22}, {0x0004, \22EC_CMD_GET_BUILD_INFO\22}, {0x0005, \22EC_CMD_GET_CHIP_INFO\22}, {0x0006, \22EC_CMD_GET_BOARD_VERSION\22}, {0x0007, \22EC_CMD_READ_MEMMAP\22}, {0x0008, \22EC_CMD_GET_CMD_VERSIONS\22}, {0x0009, \22EC_CMD_GET_COMMS_STATUS\22}, {0x000A, \22EC_CMD_TEST_PROTOCOL\22}, {0x000B, \22EC_CMD_GET_PROTOCOL_INFO\22}, {0x000C, \22EC_CMD_GSV_PAUSE_IN_S5\22}, {0x000D, \22EC_CMD_GET_FEATURES\22}, {0x000E, \22EC_CMD_GET_SKU_ID\22}, {0x000F, \22EC_CMD_SET_SKU_ID\22}, {0x0010, \22EC_CMD_FLASH_INFO\22}, {0x0011, \22EC_CMD_FLASH_READ\22}, {0x0012, \22EC_CMD_FLASH_WRITE\22}, {0x0013, \22EC_CMD_FLASH_ERASE\22}, {0x0015, \22EC_CMD_FLASH_PROTECT\22}, {0x0016, \22EC_CMD_FLASH_REGION_INFO\22}, {0x0017, \22EC_CMD_VBNV_CONTEXT\22}, {0x0018, \22EC_CMD_FLASH_SPI_INFO\22}, {0x0019, \22EC_CMD_FLASH_SELECT\22}, {0x0020, \22EC_CMD_PWM_GET_FAN_TARGET_RPM\22}, {0x0021, \22EC_CMD_PWM_SET_FAN_TARGET_RPM\22}, {0x0022, \22EC_CMD_PWM_GET_KEYBOARD_BACKLIGHT\22}, {0x0023, \22EC_CMD_PWM_SET_KEYBOARD_BACKLIGHT\22}, {0x0024, \22EC_CMD_PWM_SET_FAN_DUTY\22}, {0x0025, \22EC_CMD_PWM_SET_DUTY\22}, {0x0026, \22EC_CMD_PWM_GET_DUTY\22}, {0x0028, \22EC_CMD_LIGHTBAR_CMD\22}, {0x0029, \22EC_CMD_LED_CONTROL\22}, {0x002A, \22EC_CMD_VBOOT_HASH\22}, {0x002B, \22EC_CMD_MOTION_SENSE_CMD\22}, {0x002C, \22EC_CMD_FORCE_LID_OPEN\22}, {0x002D, \22EC_CMD_CONFIG_POWER_BUTTON\22}, {0x0030, \22EC_CMD_USB_CHARGE_SET_MODE\22}, {0x0040, \22EC_CMD_PSTORE_INFO\22}, {0x0041, \22EC_CMD_PSTORE_READ\22}, {0x0042, \22EC_CMD_PSTORE_WRITE\22}, {0x0044, \22EC_CMD_RTC_GET_VALUE\22}, {0x0045, \22EC_CMD_RTC_GET_ALARM\22}, {0x0046, \22EC_CMD_RTC_SET_VALUE\22}, {0x0047, \22EC_CMD_RTC_SET_ALARM\22}, {0x0048, \22EC_CMD_PORT80_LAST_BOOT\22}, {0x0048, \22EC_CMD_PORT80_READ\22}, {0x0049, \22EC_CMD_VSTORE_INFO\22}, {0x004A, \22EC_CMD_VSTORE_READ\22}, {0x004B, \22EC_CMD_VSTORE_WRITE\22}, {0x0050, \22EC_CMD_THERMAL_SET_THRESHOLD\22}, {0x0051, \22EC_CMD_THERMAL_GET_THRESHOLD\22}, {0x0052, \22EC_CMD_THERMAL_AUTO_FAN_CTRL\22}, {0x0053, \22EC_CMD_TMP006_GET_CALIBRATION\22}, {0x0054, \22EC_CMD_TMP006_SET_CALIBRATION\22}, {0x0055, \22EC_CMD_TMP006_GET_RAW\22}, {0x0060, \22EC_CMD_MKBP_STATE\22}, {0x0061, \22EC_CMD_MKBP_INFO\22}, {0x0062, \22EC_CMD_MKBP_SIMULATE_KEY\22}, {0x0063, \22EC_CMD_GET_KEYBOARD_ID\22}, {0x0064, \22EC_CMD_MKBP_SET_CONFIG\22}, {0x0065, \22EC_CMD_MKBP_GET_CONFIG\22}, {0x0066, \22EC_CMD_KEYSCAN_SEQ_CTRL\22}, {0x0067, \22EC_CMD_GET_NEXT_EVENT\22}, {0x0068, \22EC_CMD_KEYBOARD_FACTORY_TEST\22}, {0x0070, \22EC_CMD_TEMP_SENSOR_GET_INFO\22}, {0x0087, \22EC_CMD_HOST_EVENT_GET_B\22}, {0x0088, \22EC_CMD_HOST_EVENT_GET_SMI_MASK\22}, {0x0089, \22EC_CMD_HOST_EVENT_GET_SCI_MASK\22}, {0x008D, \22EC_CMD_HOST_EVENT_GET_WAKE_MASK\22}, {0x008A, \22EC_CMD_HOST_EVENT_SET_SMI_MASK\22}, {0x008B, \22EC_CMD_HOST_EVENT_SET_SCI_MASK\22}, {0x008C, \22EC_CMD_HOST_EVENT_CLEAR\22}, {0x008E, \22EC_CMD_HOST_EVENT_SET_WAKE_MASK\22}, {0x008F, \22EC_CMD_HOST_EVENT_CLEAR_B\22}, {0x00A4, \22EC_CMD_HOST_EVENT\22}, {0x0090, \22EC_CMD_SWITCH_ENABLE_BKLIGHT\22}, {0x0091, \22EC_CMD_SWITCH_ENABLE_WIRELESS\22}, {0x0092, \22EC_CMD_GPIO_SET\22}, {0x0093, \22EC_CMD_GPIO_GET\22}, {0x0094, \22EC_CMD_I2C_READ\22}, {0x0095, \22EC_CMD_I2C_WRITE\22}, {0x0096, \22EC_CMD_CHARGE_CONTROL\22}, {0x0097, \22EC_CMD_CONSOLE_SNAPSHOT\22}, {0x0098, \22EC_CMD_CONSOLE_READ\22}, {0x0099, \22EC_CMD_BATTERY_CUT_OFF\22}, {0x009A, \22EC_CMD_USB_MUX\22}, {0x009B, \22EC_CMD_LDO_SET\22}, {0x009C, \22EC_CMD_LDO_GET\22}, {0x009D, \22EC_CMD_POWER_INFO\22}, {0x009E, \22EC_CMD_I2C_PASSTHRU\22}, {0x009F, \22EC_CMD_HANG_DETECT\22}, {0x00A0, \22EC_CMD_CHARGE_STATE\22}, {0x00A1, \22EC_CMD_CHARGE_CURRENT_LIMIT\22}, {0x00A2, \22EC_CMD_EXTERNAL_POWER_LIMIT\22}, {0x00A3, \22EC_CMD_OVERRIDE_DEDICATED_CHARGER_LIMIT\22}, {0x00A8, \22EC_CMD_HIBERNATION_DELAY\22}, {0x00A9, \22EC_CMD_HOST_SLEEP_EVENT\22}, {0x00AA, \22EC_CMD_DEVICE_EVENT\22}, {0x00B0, \22EC_CMD_SB_READ_WORD\22}, {0x00B1, \22EC_CMD_SB_WRITE_WORD\22}, {0x00B2, \22EC_CMD_SB_READ_BLOCK\22}, {0x00B3, \22EC_CMD_SB_WRITE_BLOCK\22}, {0x00B4, \22EC_CMD_BATTERY_VENDOR_PARAM\22}, {0x00B5, \22EC_CMD_SB_FW_UPDATE\22}, {0x00B6, \22EC_CMD_ENTERING_MODE\22}, {0x00B7, \22EC_CMD_I2C_PASSTHRU_PROTECT\22}, {0x00B8, \22EC_CMD_CEC_WRITE_MSG\22}, {0x00BA, \22EC_CMD_CEC_SET\22}, {0x00BB, \22EC_CMD_CEC_GET\22}, {0x00BC, \22EC_CMD_EC_CODEC\22}, {0x00BD, \22EC_CMD_EC_CODEC_DMIC\22}, {0x00BE, \22EC_CMD_EC_CODEC_I2S_RX\22}, {0x00BF, \22EC_CMD_EC_CODEC_WOV\22}, {0x00D2, \22EC_CMD_REBOOT_EC\22}, {0x00D3, \22EC_CMD_GET_PANIC_INFO\22}, {0x00D1, \22EC_CMD_REBOOT\22}, {0x00DB, \22EC_CMD_RESEND_RESPONSE\22}, {0x00DC, \22EC_CMD_VERSION0\22}, {0x0100, \22EC_CMD_PD_EXCHANGE_STATUS\22}, {0x0104, \22EC_CMD_PD_HOST_EVENT_STATUS\22}, {0x0101, \22EC_CMD_USB_PD_CONTROL\22}, {0x0102, \22EC_CMD_USB_PD_PORTS\22}, {0x0103, \22EC_CMD_USB_PD_POWER_INFO\22}, {0x0105, \22EC_CMD_CHARGE_PORT_COUNT\22}, {0x0110, \22EC_CMD_USB_PD_FW_UPDATE\22}, {0x0111, \22EC_CMD_USB_PD_RW_HASH_ENTRY\22}, {0x0112, \22EC_CMD_USB_PD_DEV_INFO\22}, {0x0113, \22EC_CMD_USB_PD_DISCOVERY\22}, {0x0114, \22EC_CMD_PD_CHARGE_PORT_OVERRIDE\22}, {0x0115, \22EC_CMD_PD_GET_LOG_ENTRY\22}, {0x0116, \22EC_CMD_USB_PD_GET_AMODE\22}, {0x0117, \22EC_CMD_USB_PD_SET_AMODE\22}, {0x0118, \22EC_CMD_PD_WRITE_LOG_ENTRY\22}, {0x0119, \22EC_CMD_PD_CONTROL\22}, {0x011A, \22EC_CMD_USB_PD_MUX_INFO\22}, {0x011B, \22EC_CMD_PD_CHIP_INFO\22}, {0x011C, \22EC_CMD_RWSIG_CHECK_STATUS\22}, {0x011D, \22EC_CMD_RWSIG_ACTION\22}, {0x011E, \22EC_CMD_EFS_VERIFY\22}, {0x011F, \22EC_CMD_GET_CROS_BOARD_INFO\22}, {0x0120, \22EC_CMD_SET_CROS_BOARD_INFO\22}, {0x0121, \22EC_CMD_GET_UPTIME_INFO\22}, {0x0122, \22EC_CMD_ADD_ENTROPY\22}, {0x0123, \22EC_CMD_ADC_READ\22}, {0x0124, \22EC_CMD_ROLLBACK_INFO\22}, {0x0125, \22EC_CMD_AP_RESET\22}, {0x012C, \22EC_CMD_REGULATOR_GET_INFO\22}, {0x012D, \22EC_CMD_REGULATOR_ENABLE\22}, {0x012E, \22EC_CMD_REGULATOR_IS_ENABLED\22}, {0x012F, \22EC_CMD_REGULATOR_SET_VOLTAGE\22}, {0x0130, \22EC_CMD_REGULATOR_GET_VOLTAGE\22}, {0x0300, \22EC_CMD_CR51_BASE\22}, {0x03FF, \22EC_CMD_CR51_LAST\22}, {0x0400, \22EC_CMD_FP_PASSTHRU\22}, {0x0402, \22EC_CMD_FP_MODE\22}, {0x0403, \22EC_CMD_FP_INFO\22}, {0x0404, \22EC_CMD_FP_FRAME\22}, {0x0405, \22EC_CMD_FP_TEMPLATE\22}, {0x0406, \22EC_CMD_FP_CONTEXT\22}, {0x0407, \22EC_CMD_FP_STATS\22}, {0x0408, \22EC_CMD_FP_SEED\22}, {0x0409, \22EC_CMD_FP_ENC_STATUS\22}, {0x0500, \22EC_CMD_TP_SELF_TEST\22}, {0x0501, \22EC_CMD_TP_FRAME_INFO\22}, {0x0502, \22EC_CMD_TP_FRAME_SNAPSHOT\22}, {0x0503, \22EC_CMD_TP_FRAME_GET\22}, {0x0600, \22EC_CMD_BATTERY_GET_STATIC\22}, {0x0601, \22EC_CMD_BATTERY_GET_DYNAMIC\22}, {0x0602, \22EC_CMD_CHARGER_CONTROL\22}, {0x3E00, \22EC_CMD_BOARD_SPECIFIC_BASE\22}, {0x3FFF, \22EC_CMD_BOARD_SPECIFIC_LAST\22}), REC->outsize, REC->insize, __print_symbolic(REC->result, {EC_RES_SUCCESS, \22EC_RES_SUCCESS\22}, {EC_RES_INVALID_COMMAND, \22EC_RES_INVALID_COMMAND\22}, {EC_RES_ERROR, \22EC_RES_ERROR\22}, {EC_RES_INVALID_PARAM, \22EC_RES_INVALID_PARAM\22}, {EC_RES_ACCESS_DENIED, \22EC_RES_ACCESS_DENIED\22}, {EC_RES_INVALID_RESPONSE, \22EC_RES_INVALID_RESPONSE\22}, {EC_RES_INVALID_VERSION, \22EC_RES_INVALID_VERSION\22}, {EC_RES_INVALID_CHECKSUM, \22EC_RES_INVALID_CHECKSUM\22}, {EC_RES_IN_PROGRESS, \22EC_RES_IN_PROGRESS\22}, {EC_RES_UNAVAILABLE, \22EC_RES_UNAVAILABLE\22}, {EC_RES_TIMEOUT, \22EC_RES_TIMEOUT\22}, {EC_RES_OVERFLOW, \22EC_RES_OVERFLOW\22}, {EC_RES_INVALID_HEADER, \22EC_RES_INVALID_HEADER\22}, {EC_RES_REQUEST_TRUNCATED, \22EC_RES_REQUEST_TRUNCATED\22}, {EC_RES_RESPONSE_TOO_BIG, \22EC_RES_RESPONSE_TOO_BIG\22}, {EC_RES_BUS_ERROR, \22EC_RES_BUS_ERROR\22}, {EC_RES_BUSY, \22EC_RES_BUSY\22}, {EC_RES_INVALID_HEADER_VERSION, \22EC_RES_INVALID_HEADER_VERSION\22}, {EC_RES_INVALID_HEADER_CRC, \22EC_RES_INVALID_HEADER_CRC\22}, {EC_RES_INVALID_DATA_CRC, \22EC_RES_INVALID_DATA_CRC\22}, {EC_RES_DUP_UNAVAILABLE, \22EC_RES_DUP_UNAVAILABLE\22}), REC->retval\00", align 1
@event_cros_ec_request_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_request_done, %union.anon.0 { ptr @__tracepoint_cros_ec_request_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_request_done }, ptr @print_fmt_cros_ec_request_done, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cros_ec_request_done = internal global ptr @event_cros_ec_request_done, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_sensorhub_timestamp = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.211, %union.anon { %struct.anon { ptr @.str.212, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.211, %union.anon { %struct.anon { ptr @.str.213, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.215, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.216, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.217, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.218, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cros_ec_sensorhub_timestamp = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_sensorhub_timestamp, ptr @perf_trace_cros_ec_sensorhub_timestamp, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_sensorhub_timestamp, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_timestamp, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_timestamp, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_sensorhub_timestamp = internal global %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_sensorhub_timestamp, ptr null, ptr null, ptr null }, align 4
@print_fmt_cros_ec_sensorhub_timestamp = internal global [223 x i8] c"\22ec_ts: %9u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\22, REC->ec_sample_timestamp, REC->ec_fifo_timestamp, REC->fifo_timestamp, REC->current_timestamp, REC->current_time, REC->delta\00", align 1
@event_cros_ec_sensorhub_timestamp = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_sensorhub_timestamp, %union.anon.0 { ptr @__tracepoint_cros_ec_sensorhub_timestamp }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_sensorhub_timestamp }, ptr @print_fmt_cros_ec_sensorhub_timestamp, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cros_ec_sensorhub_timestamp = internal global ptr @event_cros_ec_sensorhub_timestamp, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_sensorhub_data = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.211, %union.anon { %struct.anon { ptr @.str.220, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.211, %union.anon { %struct.anon { ptr @.str.213, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.215, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.216, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.217, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.218, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cros_ec_sensorhub_data = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_sensorhub_data, ptr @perf_trace_cros_ec_sensorhub_data, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_sensorhub_data, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_data, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_data, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_sensorhub_data = internal global %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_sensorhub_data, ptr null, ptr null, ptr null }, align 4
@print_fmt_cros_ec_sensorhub_data = internal global [218 x i8] c"\22ec_num: %4u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\22, REC->ec_sensor_num, REC->ec_fifo_timestamp, REC->fifo_timestamp, REC->current_timestamp, REC->current_time, REC->delta\00", align 1
@event_cros_ec_sensorhub_data = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_sensorhub_data, %union.anon.0 { ptr @__tracepoint_cros_ec_sensorhub_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_sensorhub_data }, ptr @print_fmt_cros_ec_sensorhub_data, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cros_ec_sensorhub_data = internal global ptr @event_cros_ec_sensorhub_data, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_sensorhub_filter = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.222, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.223, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.224, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.225, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.226, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.227, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon { %struct.anon { ptr @.str.228, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cros_ec_sensorhub_filter = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_sensorhub_filter, ptr @perf_trace_cros_ec_sensorhub_filter, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_sensorhub_filter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_filter, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_filter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_sensorhub_filter = internal global %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_sensorhub_filter, ptr null, ptr null, ptr null }, align 4
@print_fmt_cros_ec_sensorhub_filter = internal global [179 x i8] c"\22dx: %12lld. dy: %12lld median_m: %12lld median_error: %12lld len: %lld x: %12lld y: %12lld\22, REC->dx, REC->dy, REC->median_m, REC->median_error, REC->history_len, REC->x, REC->y\00", align 1
@event_cros_ec_sensorhub_filter = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_sensorhub_filter, %union.anon.0 { ptr @__tracepoint_cros_ec_sensorhub_filter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_sensorhub_filter }, ptr @print_fmt_cros_ec_sensorhub_filter, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cros_ec_sensorhub_filter = internal global ptr @event_cros_ec_sensorhub_filter, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"outsize\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"insize\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"version: %u, offset: %d, command: %s, outsize: %u, insize: %u\0A\00", align 1
@trace_raw_output_cros_ec_request_start.symbols = internal constant [179 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 128, ptr @.str.7 }, %struct.trace_print_flags { i32 129, ptr @.str.8 }, %struct.trace_print_flags { i32 130, ptr @.str.9 }, %struct.trace_print_flags { i32 131, ptr @.str.10 }, %struct.trace_print_flags { i32 132, ptr @.str.11 }, %struct.trace_print_flags { i32 0, ptr @.str.12 }, %struct.trace_print_flags { i32 1, ptr @.str.13 }, %struct.trace_print_flags { i32 2, ptr @.str.14 }, %struct.trace_print_flags { i32 3, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 5, ptr @.str.17 }, %struct.trace_print_flags { i32 6, ptr @.str.18 }, %struct.trace_print_flags { i32 7, ptr @.str.19 }, %struct.trace_print_flags { i32 8, ptr @.str.20 }, %struct.trace_print_flags { i32 9, ptr @.str.21 }, %struct.trace_print_flags { i32 10, ptr @.str.22 }, %struct.trace_print_flags { i32 11, ptr @.str.23 }, %struct.trace_print_flags { i32 12, ptr @.str.24 }, %struct.trace_print_flags { i32 13, ptr @.str.25 }, %struct.trace_print_flags { i32 14, ptr @.str.26 }, %struct.trace_print_flags { i32 15, ptr @.str.27 }, %struct.trace_print_flags { i32 16, ptr @.str.28 }, %struct.trace_print_flags { i32 17, ptr @.str.29 }, %struct.trace_print_flags { i32 18, ptr @.str.30 }, %struct.trace_print_flags { i32 19, ptr @.str.31 }, %struct.trace_print_flags { i32 21, ptr @.str.32 }, %struct.trace_print_flags { i32 22, ptr @.str.33 }, %struct.trace_print_flags { i32 23, ptr @.str.34 }, %struct.trace_print_flags { i32 24, ptr @.str.35 }, %struct.trace_print_flags { i32 25, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 33, ptr @.str.38 }, %struct.trace_print_flags { i32 34, ptr @.str.39 }, %struct.trace_print_flags { i32 35, ptr @.str.40 }, %struct.trace_print_flags { i32 36, ptr @.str.41 }, %struct.trace_print_flags { i32 37, ptr @.str.42 }, %struct.trace_print_flags { i32 38, ptr @.str.43 }, %struct.trace_print_flags { i32 40, ptr @.str.44 }, %struct.trace_print_flags { i32 41, ptr @.str.45 }, %struct.trace_print_flags { i32 42, ptr @.str.46 }, %struct.trace_print_flags { i32 43, ptr @.str.47 }, %struct.trace_print_flags { i32 44, ptr @.str.48 }, %struct.trace_print_flags { i32 45, ptr @.str.49 }, %struct.trace_print_flags { i32 48, ptr @.str.50 }, %struct.trace_print_flags { i32 64, ptr @.str.51 }, %struct.trace_print_flags { i32 65, ptr @.str.52 }, %struct.trace_print_flags { i32 66, ptr @.str.53 }, %struct.trace_print_flags { i32 68, ptr @.str.54 }, %struct.trace_print_flags { i32 69, ptr @.str.55 }, %struct.trace_print_flags { i32 70, ptr @.str.56 }, %struct.trace_print_flags { i32 71, ptr @.str.57 }, %struct.trace_print_flags { i32 72, ptr @.str.58 }, %struct.trace_print_flags { i32 72, ptr @.str.59 }, %struct.trace_print_flags { i32 73, ptr @.str.60 }, %struct.trace_print_flags { i32 74, ptr @.str.61 }, %struct.trace_print_flags { i32 75, ptr @.str.62 }, %struct.trace_print_flags { i32 80, ptr @.str.63 }, %struct.trace_print_flags { i32 81, ptr @.str.64 }, %struct.trace_print_flags { i32 82, ptr @.str.65 }, %struct.trace_print_flags { i32 83, ptr @.str.66 }, %struct.trace_print_flags { i32 84, ptr @.str.67 }, %struct.trace_print_flags { i32 85, ptr @.str.68 }, %struct.trace_print_flags { i32 96, ptr @.str.69 }, %struct.trace_print_flags { i32 97, ptr @.str.70 }, %struct.trace_print_flags { i32 98, ptr @.str.71 }, %struct.trace_print_flags { i32 99, ptr @.str.72 }, %struct.trace_print_flags { i32 100, ptr @.str.73 }, %struct.trace_print_flags { i32 101, ptr @.str.74 }, %struct.trace_print_flags { i32 102, ptr @.str.75 }, %struct.trace_print_flags { i32 103, ptr @.str.76 }, %struct.trace_print_flags { i32 104, ptr @.str.77 }, %struct.trace_print_flags { i32 112, ptr @.str.78 }, %struct.trace_print_flags { i32 135, ptr @.str.79 }, %struct.trace_print_flags { i32 136, ptr @.str.80 }, %struct.trace_print_flags { i32 137, ptr @.str.81 }, %struct.trace_print_flags { i32 141, ptr @.str.82 }, %struct.trace_print_flags { i32 138, ptr @.str.83 }, %struct.trace_print_flags { i32 139, ptr @.str.84 }, %struct.trace_print_flags { i32 140, ptr @.str.85 }, %struct.trace_print_flags { i32 142, ptr @.str.86 }, %struct.trace_print_flags { i32 143, ptr @.str.87 }, %struct.trace_print_flags { i32 164, ptr @.str.88 }, %struct.trace_print_flags { i32 144, ptr @.str.89 }, %struct.trace_print_flags { i32 145, ptr @.str.90 }, %struct.trace_print_flags { i32 146, ptr @.str.91 }, %struct.trace_print_flags { i32 147, ptr @.str.92 }, %struct.trace_print_flags { i32 148, ptr @.str.93 }, %struct.trace_print_flags { i32 149, ptr @.str.94 }, %struct.trace_print_flags { i32 150, ptr @.str.95 }, %struct.trace_print_flags { i32 151, ptr @.str.96 }, %struct.trace_print_flags { i32 152, ptr @.str.97 }, %struct.trace_print_flags { i32 153, ptr @.str.98 }, %struct.trace_print_flags { i32 154, ptr @.str.99 }, %struct.trace_print_flags { i32 155, ptr @.str.100 }, %struct.trace_print_flags { i32 156, ptr @.str.101 }, %struct.trace_print_flags { i32 157, ptr @.str.102 }, %struct.trace_print_flags { i32 158, ptr @.str.103 }, %struct.trace_print_flags { i32 159, ptr @.str.104 }, %struct.trace_print_flags { i32 160, ptr @.str.105 }, %struct.trace_print_flags { i32 161, ptr @.str.106 }, %struct.trace_print_flags { i32 162, ptr @.str.107 }, %struct.trace_print_flags { i32 163, ptr @.str.108 }, %struct.trace_print_flags { i32 168, ptr @.str.109 }, %struct.trace_print_flags { i32 169, ptr @.str.110 }, %struct.trace_print_flags { i32 170, ptr @.str.111 }, %struct.trace_print_flags { i32 176, ptr @.str.112 }, %struct.trace_print_flags { i32 177, ptr @.str.113 }, %struct.trace_print_flags { i32 178, ptr @.str.114 }, %struct.trace_print_flags { i32 179, ptr @.str.115 }, %struct.trace_print_flags { i32 180, ptr @.str.116 }, %struct.trace_print_flags { i32 181, ptr @.str.117 }, %struct.trace_print_flags { i32 182, ptr @.str.118 }, %struct.trace_print_flags { i32 183, ptr @.str.119 }, %struct.trace_print_flags { i32 184, ptr @.str.120 }, %struct.trace_print_flags { i32 186, ptr @.str.121 }, %struct.trace_print_flags { i32 187, ptr @.str.122 }, %struct.trace_print_flags { i32 188, ptr @.str.123 }, %struct.trace_print_flags { i32 189, ptr @.str.124 }, %struct.trace_print_flags { i32 190, ptr @.str.125 }, %struct.trace_print_flags { i32 191, ptr @.str.126 }, %struct.trace_print_flags { i32 210, ptr @.str.127 }, %struct.trace_print_flags { i32 211, ptr @.str.128 }, %struct.trace_print_flags { i32 209, ptr @.str.129 }, %struct.trace_print_flags { i32 219, ptr @.str.130 }, %struct.trace_print_flags { i32 220, ptr @.str.131 }, %struct.trace_print_flags { i32 256, ptr @.str.132 }, %struct.trace_print_flags { i32 260, ptr @.str.133 }, %struct.trace_print_flags { i32 257, ptr @.str.134 }, %struct.trace_print_flags { i32 258, ptr @.str.135 }, %struct.trace_print_flags { i32 259, ptr @.str.136 }, %struct.trace_print_flags { i32 261, ptr @.str.137 }, %struct.trace_print_flags { i32 272, ptr @.str.138 }, %struct.trace_print_flags { i32 273, ptr @.str.139 }, %struct.trace_print_flags { i32 274, ptr @.str.140 }, %struct.trace_print_flags { i32 275, ptr @.str.141 }, %struct.trace_print_flags { i32 276, ptr @.str.142 }, %struct.trace_print_flags { i32 277, ptr @.str.143 }, %struct.trace_print_flags { i32 278, ptr @.str.144 }, %struct.trace_print_flags { i32 279, ptr @.str.145 }, %struct.trace_print_flags { i32 280, ptr @.str.146 }, %struct.trace_print_flags { i32 281, ptr @.str.147 }, %struct.trace_print_flags { i32 282, ptr @.str.148 }, %struct.trace_print_flags { i32 283, ptr @.str.149 }, %struct.trace_print_flags { i32 284, ptr @.str.150 }, %struct.trace_print_flags { i32 285, ptr @.str.151 }, %struct.trace_print_flags { i32 286, ptr @.str.152 }, %struct.trace_print_flags { i32 287, ptr @.str.153 }, %struct.trace_print_flags { i32 288, ptr @.str.154 }, %struct.trace_print_flags { i32 289, ptr @.str.155 }, %struct.trace_print_flags { i32 290, ptr @.str.156 }, %struct.trace_print_flags { i32 291, ptr @.str.157 }, %struct.trace_print_flags { i32 292, ptr @.str.158 }, %struct.trace_print_flags { i32 293, ptr @.str.159 }, %struct.trace_print_flags { i32 300, ptr @.str.160 }, %struct.trace_print_flags { i32 301, ptr @.str.161 }, %struct.trace_print_flags { i32 302, ptr @.str.162 }, %struct.trace_print_flags { i32 303, ptr @.str.163 }, %struct.trace_print_flags { i32 304, ptr @.str.164 }, %struct.trace_print_flags { i32 768, ptr @.str.165 }, %struct.trace_print_flags { i32 1023, ptr @.str.166 }, %struct.trace_print_flags { i32 1024, ptr @.str.167 }, %struct.trace_print_flags { i32 1026, ptr @.str.168 }, %struct.trace_print_flags { i32 1027, ptr @.str.169 }, %struct.trace_print_flags { i32 1028, ptr @.str.170 }, %struct.trace_print_flags { i32 1029, ptr @.str.171 }, %struct.trace_print_flags { i32 1030, ptr @.str.172 }, %struct.trace_print_flags { i32 1031, ptr @.str.173 }, %struct.trace_print_flags { i32 1032, ptr @.str.174 }, %struct.trace_print_flags { i32 1033, ptr @.str.175 }, %struct.trace_print_flags { i32 1280, ptr @.str.176 }, %struct.trace_print_flags { i32 1281, ptr @.str.177 }, %struct.trace_print_flags { i32 1282, ptr @.str.178 }, %struct.trace_print_flags { i32 1283, ptr @.str.179 }, %struct.trace_print_flags { i32 1536, ptr @.str.180 }, %struct.trace_print_flags { i32 1537, ptr @.str.181 }, %struct.trace_print_flags { i32 1538, ptr @.str.182 }, %struct.trace_print_flags { i32 15872, ptr @.str.183 }, %struct.trace_print_flags { i32 16383, ptr @.str.184 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"EC_CMD_ACPI_READ\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"EC_CMD_ACPI_WRITE\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"EC_CMD_ACPI_BURST_ENABLE\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"EC_CMD_ACPI_BURST_DISABLE\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"EC_CMD_ACPI_QUERY_EVENT\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"EC_CMD_PROTO_VERSION\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"EC_CMD_HELLO\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"EC_CMD_GET_VERSION\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"EC_CMD_READ_TEST\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"EC_CMD_GET_BUILD_INFO\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"EC_CMD_GET_CHIP_INFO\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"EC_CMD_GET_BOARD_VERSION\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"EC_CMD_READ_MEMMAP\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"EC_CMD_GET_CMD_VERSIONS\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"EC_CMD_GET_COMMS_STATUS\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"EC_CMD_TEST_PROTOCOL\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"EC_CMD_GET_PROTOCOL_INFO\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"EC_CMD_GSV_PAUSE_IN_S5\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"EC_CMD_GET_FEATURES\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"EC_CMD_GET_SKU_ID\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"EC_CMD_SET_SKU_ID\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"EC_CMD_FLASH_INFO\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"EC_CMD_FLASH_READ\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"EC_CMD_FLASH_WRITE\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"EC_CMD_FLASH_ERASE\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"EC_CMD_FLASH_PROTECT\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"EC_CMD_FLASH_REGION_INFO\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"EC_CMD_VBNV_CONTEXT\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"EC_CMD_FLASH_SPI_INFO\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"EC_CMD_FLASH_SELECT\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"EC_CMD_PWM_GET_FAN_TARGET_RPM\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"EC_CMD_PWM_SET_FAN_TARGET_RPM\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"EC_CMD_PWM_GET_KEYBOARD_BACKLIGHT\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"EC_CMD_PWM_SET_KEYBOARD_BACKLIGHT\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"EC_CMD_PWM_SET_FAN_DUTY\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"EC_CMD_PWM_SET_DUTY\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"EC_CMD_PWM_GET_DUTY\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"EC_CMD_LIGHTBAR_CMD\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"EC_CMD_LED_CONTROL\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"EC_CMD_VBOOT_HASH\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"EC_CMD_MOTION_SENSE_CMD\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"EC_CMD_FORCE_LID_OPEN\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"EC_CMD_CONFIG_POWER_BUTTON\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"EC_CMD_USB_CHARGE_SET_MODE\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"EC_CMD_PSTORE_INFO\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"EC_CMD_PSTORE_READ\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"EC_CMD_PSTORE_WRITE\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"EC_CMD_RTC_GET_VALUE\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"EC_CMD_RTC_GET_ALARM\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"EC_CMD_RTC_SET_VALUE\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"EC_CMD_RTC_SET_ALARM\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"EC_CMD_PORT80_LAST_BOOT\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"EC_CMD_PORT80_READ\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"EC_CMD_VSTORE_INFO\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"EC_CMD_VSTORE_READ\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"EC_CMD_VSTORE_WRITE\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"EC_CMD_THERMAL_SET_THRESHOLD\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"EC_CMD_THERMAL_GET_THRESHOLD\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"EC_CMD_THERMAL_AUTO_FAN_CTRL\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"EC_CMD_TMP006_GET_CALIBRATION\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"EC_CMD_TMP006_SET_CALIBRATION\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"EC_CMD_TMP006_GET_RAW\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"EC_CMD_MKBP_STATE\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"EC_CMD_MKBP_INFO\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"EC_CMD_MKBP_SIMULATE_KEY\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"EC_CMD_GET_KEYBOARD_ID\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"EC_CMD_MKBP_SET_CONFIG\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"EC_CMD_MKBP_GET_CONFIG\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"EC_CMD_KEYSCAN_SEQ_CTRL\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"EC_CMD_GET_NEXT_EVENT\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"EC_CMD_KEYBOARD_FACTORY_TEST\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"EC_CMD_TEMP_SENSOR_GET_INFO\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"EC_CMD_HOST_EVENT_GET_B\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"EC_CMD_HOST_EVENT_GET_SMI_MASK\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"EC_CMD_HOST_EVENT_GET_SCI_MASK\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"EC_CMD_HOST_EVENT_GET_WAKE_MASK\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"EC_CMD_HOST_EVENT_SET_SMI_MASK\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"EC_CMD_HOST_EVENT_SET_SCI_MASK\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"EC_CMD_HOST_EVENT_CLEAR\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"EC_CMD_HOST_EVENT_SET_WAKE_MASK\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"EC_CMD_HOST_EVENT_CLEAR_B\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"EC_CMD_HOST_EVENT\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"EC_CMD_SWITCH_ENABLE_BKLIGHT\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"EC_CMD_SWITCH_ENABLE_WIRELESS\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"EC_CMD_GPIO_SET\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"EC_CMD_GPIO_GET\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"EC_CMD_I2C_READ\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"EC_CMD_I2C_WRITE\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"EC_CMD_CHARGE_CONTROL\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"EC_CMD_CONSOLE_SNAPSHOT\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"EC_CMD_CONSOLE_READ\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"EC_CMD_BATTERY_CUT_OFF\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"EC_CMD_USB_MUX\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"EC_CMD_LDO_SET\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"EC_CMD_LDO_GET\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"EC_CMD_POWER_INFO\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"EC_CMD_I2C_PASSTHRU\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"EC_CMD_HANG_DETECT\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"EC_CMD_CHARGE_STATE\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"EC_CMD_CHARGE_CURRENT_LIMIT\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"EC_CMD_EXTERNAL_POWER_LIMIT\00", align 1
@.str.108 = private unnamed_addr constant [40 x i8] c"EC_CMD_OVERRIDE_DEDICATED_CHARGER_LIMIT\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"EC_CMD_HIBERNATION_DELAY\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"EC_CMD_HOST_SLEEP_EVENT\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"EC_CMD_DEVICE_EVENT\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"EC_CMD_SB_READ_WORD\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"EC_CMD_SB_WRITE_WORD\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"EC_CMD_SB_READ_BLOCK\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"EC_CMD_SB_WRITE_BLOCK\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"EC_CMD_BATTERY_VENDOR_PARAM\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"EC_CMD_SB_FW_UPDATE\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"EC_CMD_ENTERING_MODE\00", align 1
@.str.119 = private unnamed_addr constant [28 x i8] c"EC_CMD_I2C_PASSTHRU_PROTECT\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"EC_CMD_CEC_WRITE_MSG\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"EC_CMD_CEC_SET\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"EC_CMD_CEC_GET\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"EC_CMD_EC_CODEC\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"EC_CMD_EC_CODEC_DMIC\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"EC_CMD_EC_CODEC_I2S_RX\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"EC_CMD_EC_CODEC_WOV\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"EC_CMD_REBOOT_EC\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"EC_CMD_GET_PANIC_INFO\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"EC_CMD_REBOOT\00", align 1
@.str.130 = private unnamed_addr constant [23 x i8] c"EC_CMD_RESEND_RESPONSE\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"EC_CMD_VERSION0\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"EC_CMD_PD_EXCHANGE_STATUS\00", align 1
@.str.133 = private unnamed_addr constant [28 x i8] c"EC_CMD_PD_HOST_EVENT_STATUS\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"EC_CMD_USB_PD_CONTROL\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"EC_CMD_USB_PD_PORTS\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"EC_CMD_USB_PD_POWER_INFO\00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"EC_CMD_CHARGE_PORT_COUNT\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"EC_CMD_USB_PD_FW_UPDATE\00", align 1
@.str.139 = private unnamed_addr constant [28 x i8] c"EC_CMD_USB_PD_RW_HASH_ENTRY\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"EC_CMD_USB_PD_DEV_INFO\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"EC_CMD_USB_PD_DISCOVERY\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"EC_CMD_PD_CHARGE_PORT_OVERRIDE\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"EC_CMD_PD_GET_LOG_ENTRY\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"EC_CMD_USB_PD_GET_AMODE\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"EC_CMD_USB_PD_SET_AMODE\00", align 1
@.str.146 = private unnamed_addr constant [26 x i8] c"EC_CMD_PD_WRITE_LOG_ENTRY\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"EC_CMD_PD_CONTROL\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"EC_CMD_USB_PD_MUX_INFO\00", align 1
@.str.149 = private unnamed_addr constant [20 x i8] c"EC_CMD_PD_CHIP_INFO\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"EC_CMD_RWSIG_CHECK_STATUS\00", align 1
@.str.151 = private unnamed_addr constant [20 x i8] c"EC_CMD_RWSIG_ACTION\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"EC_CMD_EFS_VERIFY\00", align 1
@.str.153 = private unnamed_addr constant [27 x i8] c"EC_CMD_GET_CROS_BOARD_INFO\00", align 1
@.str.154 = private unnamed_addr constant [27 x i8] c"EC_CMD_SET_CROS_BOARD_INFO\00", align 1
@.str.155 = private unnamed_addr constant [23 x i8] c"EC_CMD_GET_UPTIME_INFO\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"EC_CMD_ADD_ENTROPY\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"EC_CMD_ADC_READ\00", align 1
@.str.158 = private unnamed_addr constant [21 x i8] c"EC_CMD_ROLLBACK_INFO\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"EC_CMD_AP_RESET\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"EC_CMD_REGULATOR_GET_INFO\00", align 1
@.str.161 = private unnamed_addr constant [24 x i8] c"EC_CMD_REGULATOR_ENABLE\00", align 1
@.str.162 = private unnamed_addr constant [28 x i8] c"EC_CMD_REGULATOR_IS_ENABLED\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"EC_CMD_REGULATOR_SET_VOLTAGE\00", align 1
@.str.164 = private unnamed_addr constant [29 x i8] c"EC_CMD_REGULATOR_GET_VOLTAGE\00", align 1
@.str.165 = private unnamed_addr constant [17 x i8] c"EC_CMD_CR51_BASE\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"EC_CMD_CR51_LAST\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"EC_CMD_FP_PASSTHRU\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"EC_CMD_FP_MODE\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c"EC_CMD_FP_INFO\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"EC_CMD_FP_FRAME\00", align 1
@.str.171 = private unnamed_addr constant [19 x i8] c"EC_CMD_FP_TEMPLATE\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"EC_CMD_FP_CONTEXT\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"EC_CMD_FP_STATS\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"EC_CMD_FP_SEED\00", align 1
@.str.175 = private unnamed_addr constant [21 x i8] c"EC_CMD_FP_ENC_STATUS\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"EC_CMD_TP_SELF_TEST\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"EC_CMD_TP_FRAME_INFO\00", align 1
@.str.178 = private unnamed_addr constant [25 x i8] c"EC_CMD_TP_FRAME_SNAPSHOT\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"EC_CMD_TP_FRAME_GET\00", align 1
@.str.180 = private unnamed_addr constant [26 x i8] c"EC_CMD_BATTERY_GET_STATIC\00", align 1
@.str.181 = private unnamed_addr constant [27 x i8] c"EC_CMD_BATTERY_GET_DYNAMIC\00", align 1
@.str.182 = private unnamed_addr constant [23 x i8] c"EC_CMD_CHARGER_CONTROL\00", align 1
@.str.183 = private unnamed_addr constant [27 x i8] c"EC_CMD_BOARD_SPECIFIC_BASE\00", align 1
@.str.184 = private unnamed_addr constant [27 x i8] c"EC_CMD_BOARD_SPECIFIC_LAST\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.188 = private unnamed_addr constant [90 x i8] c"version: %u, offset: %d, command: %s, outsize: %u, insize: %u, ec result: %s, retval: %u\0A\00", align 1
@trace_raw_output_cros_ec_request_done.symbols = internal constant [179 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 128, ptr @.str.7 }, %struct.trace_print_flags { i32 129, ptr @.str.8 }, %struct.trace_print_flags { i32 130, ptr @.str.9 }, %struct.trace_print_flags { i32 131, ptr @.str.10 }, %struct.trace_print_flags { i32 132, ptr @.str.11 }, %struct.trace_print_flags { i32 0, ptr @.str.12 }, %struct.trace_print_flags { i32 1, ptr @.str.13 }, %struct.trace_print_flags { i32 2, ptr @.str.14 }, %struct.trace_print_flags { i32 3, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 5, ptr @.str.17 }, %struct.trace_print_flags { i32 6, ptr @.str.18 }, %struct.trace_print_flags { i32 7, ptr @.str.19 }, %struct.trace_print_flags { i32 8, ptr @.str.20 }, %struct.trace_print_flags { i32 9, ptr @.str.21 }, %struct.trace_print_flags { i32 10, ptr @.str.22 }, %struct.trace_print_flags { i32 11, ptr @.str.23 }, %struct.trace_print_flags { i32 12, ptr @.str.24 }, %struct.trace_print_flags { i32 13, ptr @.str.25 }, %struct.trace_print_flags { i32 14, ptr @.str.26 }, %struct.trace_print_flags { i32 15, ptr @.str.27 }, %struct.trace_print_flags { i32 16, ptr @.str.28 }, %struct.trace_print_flags { i32 17, ptr @.str.29 }, %struct.trace_print_flags { i32 18, ptr @.str.30 }, %struct.trace_print_flags { i32 19, ptr @.str.31 }, %struct.trace_print_flags { i32 21, ptr @.str.32 }, %struct.trace_print_flags { i32 22, ptr @.str.33 }, %struct.trace_print_flags { i32 23, ptr @.str.34 }, %struct.trace_print_flags { i32 24, ptr @.str.35 }, %struct.trace_print_flags { i32 25, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 33, ptr @.str.38 }, %struct.trace_print_flags { i32 34, ptr @.str.39 }, %struct.trace_print_flags { i32 35, ptr @.str.40 }, %struct.trace_print_flags { i32 36, ptr @.str.41 }, %struct.trace_print_flags { i32 37, ptr @.str.42 }, %struct.trace_print_flags { i32 38, ptr @.str.43 }, %struct.trace_print_flags { i32 40, ptr @.str.44 }, %struct.trace_print_flags { i32 41, ptr @.str.45 }, %struct.trace_print_flags { i32 42, ptr @.str.46 }, %struct.trace_print_flags { i32 43, ptr @.str.47 }, %struct.trace_print_flags { i32 44, ptr @.str.48 }, %struct.trace_print_flags { i32 45, ptr @.str.49 }, %struct.trace_print_flags { i32 48, ptr @.str.50 }, %struct.trace_print_flags { i32 64, ptr @.str.51 }, %struct.trace_print_flags { i32 65, ptr @.str.52 }, %struct.trace_print_flags { i32 66, ptr @.str.53 }, %struct.trace_print_flags { i32 68, ptr @.str.54 }, %struct.trace_print_flags { i32 69, ptr @.str.55 }, %struct.trace_print_flags { i32 70, ptr @.str.56 }, %struct.trace_print_flags { i32 71, ptr @.str.57 }, %struct.trace_print_flags { i32 72, ptr @.str.58 }, %struct.trace_print_flags { i32 72, ptr @.str.59 }, %struct.trace_print_flags { i32 73, ptr @.str.60 }, %struct.trace_print_flags { i32 74, ptr @.str.61 }, %struct.trace_print_flags { i32 75, ptr @.str.62 }, %struct.trace_print_flags { i32 80, ptr @.str.63 }, %struct.trace_print_flags { i32 81, ptr @.str.64 }, %struct.trace_print_flags { i32 82, ptr @.str.65 }, %struct.trace_print_flags { i32 83, ptr @.str.66 }, %struct.trace_print_flags { i32 84, ptr @.str.67 }, %struct.trace_print_flags { i32 85, ptr @.str.68 }, %struct.trace_print_flags { i32 96, ptr @.str.69 }, %struct.trace_print_flags { i32 97, ptr @.str.70 }, %struct.trace_print_flags { i32 98, ptr @.str.71 }, %struct.trace_print_flags { i32 99, ptr @.str.72 }, %struct.trace_print_flags { i32 100, ptr @.str.73 }, %struct.trace_print_flags { i32 101, ptr @.str.74 }, %struct.trace_print_flags { i32 102, ptr @.str.75 }, %struct.trace_print_flags { i32 103, ptr @.str.76 }, %struct.trace_print_flags { i32 104, ptr @.str.77 }, %struct.trace_print_flags { i32 112, ptr @.str.78 }, %struct.trace_print_flags { i32 135, ptr @.str.79 }, %struct.trace_print_flags { i32 136, ptr @.str.80 }, %struct.trace_print_flags { i32 137, ptr @.str.81 }, %struct.trace_print_flags { i32 141, ptr @.str.82 }, %struct.trace_print_flags { i32 138, ptr @.str.83 }, %struct.trace_print_flags { i32 139, ptr @.str.84 }, %struct.trace_print_flags { i32 140, ptr @.str.85 }, %struct.trace_print_flags { i32 142, ptr @.str.86 }, %struct.trace_print_flags { i32 143, ptr @.str.87 }, %struct.trace_print_flags { i32 164, ptr @.str.88 }, %struct.trace_print_flags { i32 144, ptr @.str.89 }, %struct.trace_print_flags { i32 145, ptr @.str.90 }, %struct.trace_print_flags { i32 146, ptr @.str.91 }, %struct.trace_print_flags { i32 147, ptr @.str.92 }, %struct.trace_print_flags { i32 148, ptr @.str.93 }, %struct.trace_print_flags { i32 149, ptr @.str.94 }, %struct.trace_print_flags { i32 150, ptr @.str.95 }, %struct.trace_print_flags { i32 151, ptr @.str.96 }, %struct.trace_print_flags { i32 152, ptr @.str.97 }, %struct.trace_print_flags { i32 153, ptr @.str.98 }, %struct.trace_print_flags { i32 154, ptr @.str.99 }, %struct.trace_print_flags { i32 155, ptr @.str.100 }, %struct.trace_print_flags { i32 156, ptr @.str.101 }, %struct.trace_print_flags { i32 157, ptr @.str.102 }, %struct.trace_print_flags { i32 158, ptr @.str.103 }, %struct.trace_print_flags { i32 159, ptr @.str.104 }, %struct.trace_print_flags { i32 160, ptr @.str.105 }, %struct.trace_print_flags { i32 161, ptr @.str.106 }, %struct.trace_print_flags { i32 162, ptr @.str.107 }, %struct.trace_print_flags { i32 163, ptr @.str.108 }, %struct.trace_print_flags { i32 168, ptr @.str.109 }, %struct.trace_print_flags { i32 169, ptr @.str.110 }, %struct.trace_print_flags { i32 170, ptr @.str.111 }, %struct.trace_print_flags { i32 176, ptr @.str.112 }, %struct.trace_print_flags { i32 177, ptr @.str.113 }, %struct.trace_print_flags { i32 178, ptr @.str.114 }, %struct.trace_print_flags { i32 179, ptr @.str.115 }, %struct.trace_print_flags { i32 180, ptr @.str.116 }, %struct.trace_print_flags { i32 181, ptr @.str.117 }, %struct.trace_print_flags { i32 182, ptr @.str.118 }, %struct.trace_print_flags { i32 183, ptr @.str.119 }, %struct.trace_print_flags { i32 184, ptr @.str.120 }, %struct.trace_print_flags { i32 186, ptr @.str.121 }, %struct.trace_print_flags { i32 187, ptr @.str.122 }, %struct.trace_print_flags { i32 188, ptr @.str.123 }, %struct.trace_print_flags { i32 189, ptr @.str.124 }, %struct.trace_print_flags { i32 190, ptr @.str.125 }, %struct.trace_print_flags { i32 191, ptr @.str.126 }, %struct.trace_print_flags { i32 210, ptr @.str.127 }, %struct.trace_print_flags { i32 211, ptr @.str.128 }, %struct.trace_print_flags { i32 209, ptr @.str.129 }, %struct.trace_print_flags { i32 219, ptr @.str.130 }, %struct.trace_print_flags { i32 220, ptr @.str.131 }, %struct.trace_print_flags { i32 256, ptr @.str.132 }, %struct.trace_print_flags { i32 260, ptr @.str.133 }, %struct.trace_print_flags { i32 257, ptr @.str.134 }, %struct.trace_print_flags { i32 258, ptr @.str.135 }, %struct.trace_print_flags { i32 259, ptr @.str.136 }, %struct.trace_print_flags { i32 261, ptr @.str.137 }, %struct.trace_print_flags { i32 272, ptr @.str.138 }, %struct.trace_print_flags { i32 273, ptr @.str.139 }, %struct.trace_print_flags { i32 274, ptr @.str.140 }, %struct.trace_print_flags { i32 275, ptr @.str.141 }, %struct.trace_print_flags { i32 276, ptr @.str.142 }, %struct.trace_print_flags { i32 277, ptr @.str.143 }, %struct.trace_print_flags { i32 278, ptr @.str.144 }, %struct.trace_print_flags { i32 279, ptr @.str.145 }, %struct.trace_print_flags { i32 280, ptr @.str.146 }, %struct.trace_print_flags { i32 281, ptr @.str.147 }, %struct.trace_print_flags { i32 282, ptr @.str.148 }, %struct.trace_print_flags { i32 283, ptr @.str.149 }, %struct.trace_print_flags { i32 284, ptr @.str.150 }, %struct.trace_print_flags { i32 285, ptr @.str.151 }, %struct.trace_print_flags { i32 286, ptr @.str.152 }, %struct.trace_print_flags { i32 287, ptr @.str.153 }, %struct.trace_print_flags { i32 288, ptr @.str.154 }, %struct.trace_print_flags { i32 289, ptr @.str.155 }, %struct.trace_print_flags { i32 290, ptr @.str.156 }, %struct.trace_print_flags { i32 291, ptr @.str.157 }, %struct.trace_print_flags { i32 292, ptr @.str.158 }, %struct.trace_print_flags { i32 293, ptr @.str.159 }, %struct.trace_print_flags { i32 300, ptr @.str.160 }, %struct.trace_print_flags { i32 301, ptr @.str.161 }, %struct.trace_print_flags { i32 302, ptr @.str.162 }, %struct.trace_print_flags { i32 303, ptr @.str.163 }, %struct.trace_print_flags { i32 304, ptr @.str.164 }, %struct.trace_print_flags { i32 768, ptr @.str.165 }, %struct.trace_print_flags { i32 1023, ptr @.str.166 }, %struct.trace_print_flags { i32 1024, ptr @.str.167 }, %struct.trace_print_flags { i32 1026, ptr @.str.168 }, %struct.trace_print_flags { i32 1027, ptr @.str.169 }, %struct.trace_print_flags { i32 1028, ptr @.str.170 }, %struct.trace_print_flags { i32 1029, ptr @.str.171 }, %struct.trace_print_flags { i32 1030, ptr @.str.172 }, %struct.trace_print_flags { i32 1031, ptr @.str.173 }, %struct.trace_print_flags { i32 1032, ptr @.str.174 }, %struct.trace_print_flags { i32 1033, ptr @.str.175 }, %struct.trace_print_flags { i32 1280, ptr @.str.176 }, %struct.trace_print_flags { i32 1281, ptr @.str.177 }, %struct.trace_print_flags { i32 1282, ptr @.str.178 }, %struct.trace_print_flags { i32 1283, ptr @.str.179 }, %struct.trace_print_flags { i32 1536, ptr @.str.180 }, %struct.trace_print_flags { i32 1537, ptr @.str.181 }, %struct.trace_print_flags { i32 1538, ptr @.str.182 }, %struct.trace_print_flags { i32 15872, ptr @.str.183 }, %struct.trace_print_flags { i32 16383, ptr @.str.184 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_cros_ec_request_done.symbols.189 = internal constant [22 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.190 }, %struct.trace_print_flags { i32 1, ptr @.str.191 }, %struct.trace_print_flags { i32 2, ptr @.str.192 }, %struct.trace_print_flags { i32 3, ptr @.str.193 }, %struct.trace_print_flags { i32 4, ptr @.str.194 }, %struct.trace_print_flags { i32 5, ptr @.str.195 }, %struct.trace_print_flags { i32 6, ptr @.str.196 }, %struct.trace_print_flags { i32 7, ptr @.str.197 }, %struct.trace_print_flags { i32 8, ptr @.str.198 }, %struct.trace_print_flags { i32 9, ptr @.str.199 }, %struct.trace_print_flags { i32 10, ptr @.str.200 }, %struct.trace_print_flags { i32 11, ptr @.str.201 }, %struct.trace_print_flags { i32 12, ptr @.str.202 }, %struct.trace_print_flags { i32 13, ptr @.str.203 }, %struct.trace_print_flags { i32 14, ptr @.str.204 }, %struct.trace_print_flags { i32 15, ptr @.str.205 }, %struct.trace_print_flags { i32 16, ptr @.str.206 }, %struct.trace_print_flags { i32 17, ptr @.str.207 }, %struct.trace_print_flags { i32 18, ptr @.str.208 }, %struct.trace_print_flags { i32 19, ptr @.str.209 }, %struct.trace_print_flags { i32 20, ptr @.str.210 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.190 = private unnamed_addr constant [15 x i8] c"EC_RES_SUCCESS\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"EC_RES_INVALID_COMMAND\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"EC_RES_ERROR\00", align 1
@.str.193 = private unnamed_addr constant [21 x i8] c"EC_RES_INVALID_PARAM\00", align 1
@.str.194 = private unnamed_addr constant [21 x i8] c"EC_RES_ACCESS_DENIED\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"EC_RES_INVALID_RESPONSE\00", align 1
@.str.196 = private unnamed_addr constant [23 x i8] c"EC_RES_INVALID_VERSION\00", align 1
@.str.197 = private unnamed_addr constant [24 x i8] c"EC_RES_INVALID_CHECKSUM\00", align 1
@.str.198 = private unnamed_addr constant [19 x i8] c"EC_RES_IN_PROGRESS\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"EC_RES_UNAVAILABLE\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"EC_RES_TIMEOUT\00", align 1
@.str.201 = private unnamed_addr constant [16 x i8] c"EC_RES_OVERFLOW\00", align 1
@.str.202 = private unnamed_addr constant [22 x i8] c"EC_RES_INVALID_HEADER\00", align 1
@.str.203 = private unnamed_addr constant [25 x i8] c"EC_RES_REQUEST_TRUNCATED\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"EC_RES_RESPONSE_TOO_BIG\00", align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"EC_RES_BUS_ERROR\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"EC_RES_BUSY\00", align 1
@.str.207 = private unnamed_addr constant [30 x i8] c"EC_RES_INVALID_HEADER_VERSION\00", align 1
@.str.208 = private unnamed_addr constant [26 x i8] c"EC_RES_INVALID_HEADER_CRC\00", align 1
@.str.209 = private unnamed_addr constant [24 x i8] c"EC_RES_INVALID_DATA_CRC\00", align 1
@.str.210 = private unnamed_addr constant [23 x i8] c"EC_RES_DUP_UNAVAILABLE\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.212 = private unnamed_addr constant [20 x i8] c"ec_sample_timestamp\00", align 1
@.str.213 = private unnamed_addr constant [18 x i8] c"ec_fifo_timestamp\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"fifo_timestamp\00", align 1
@.str.216 = private unnamed_addr constant [18 x i8] c"current_timestamp\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"current_time\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.219 = private unnamed_addr constant [96 x i8] c"ec_ts: %9u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\0A\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"ec_sensor_num\00", align 1
@.str.221 = private unnamed_addr constant [97 x i8] c"ec_num: %4u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\0A\00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@.str.223 = private unnamed_addr constant [3 x i8] c"dy\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"median_m\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"median_error\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"history_len\00", align 1
@.str.227 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.229 = private unnamed_addr constant [92 x i8] c"dx: %12lld. dy: %12lld median_m: %12lld median_error: %12lld len: %lld x: %12lld y: %12lld\0A\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__event_cros_ec_request_done, ptr @__event_cros_ec_request_start, ptr @__event_cros_ec_sensorhub_data, ptr @__event_cros_ec_sensorhub_filter, ptr @__event_cros_ec_sensorhub_timestamp, ptr @__tracepoint_cros_ec_request_done, ptr @__tracepoint_cros_ec_request_start, ptr @__tracepoint_cros_ec_sensorhub_data, ptr @__tracepoint_cros_ec_sensorhub_filter, ptr @__tracepoint_cros_ec_sensorhub_timestamp, ptr @__tracepoint_ptr_cros_ec_request_done, ptr @__tracepoint_ptr_cros_ec_request_start, ptr @__tracepoint_ptr_cros_ec_sensorhub_data, ptr @__tracepoint_ptr_cros_ec_sensorhub_filter, ptr @__tracepoint_ptr_cros_ec_sensorhub_timestamp, ptr @event_class_cros_ec_request_done, ptr @event_class_cros_ec_request_start, ptr @event_class_cros_ec_sensorhub_data, ptr @event_class_cros_ec_sensorhub_filter, ptr @event_class_cros_ec_sensorhub_timestamp, ptr @event_cros_ec_request_done, ptr @event_cros_ec_request_start, ptr @event_cros_ec_sensorhub_data, ptr @event_cros_ec_sensorhub_filter, ptr @event_cros_ec_sensorhub_timestamp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_request_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_request_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_request_done(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_request_done, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #6
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_sensorhub_timestamp(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_timestamp, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #6
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_sensorhub_data(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_data, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #6
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_sensorhub_filter(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_filter, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i64 noundef %2, i64 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_request_start(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %32, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 28) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %14, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 14
  %22 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %14, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %19, align 4
  %24 = and i32 %23, 16383
  %25 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %14, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %14, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %14, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %32

32:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_request_start(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #4, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load i32, ptr %1, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %20, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 14
  %38 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %20, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %35, align 4
  %40 = and i32 %39, 16383
  %41 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %20, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %20, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %20, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %4, align 4
  %49 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %12, ptr noundef null) #6
  br label %50

50:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_request_done(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %13, label %37, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 36) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %15, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 14
  %23 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %15, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %20, align 4
  %25 = and i32 %24, 16383
  %26 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %15, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %15, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %15, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %15, i32 0, i32 6
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %15, i32 0, i32 7
  store i32 %2, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #6
  br label %37

37:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_request_done(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #4, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #6
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #6
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = load i32, ptr %1, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %21, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 14
  %39 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %21, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %36, align 4
  %41 = and i32 %40, 16383
  %42 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %21, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %21, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %21, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %21, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %21, i32 0, i32 7
  store i32 %2, ptr %52, align 4
  %53 = load i32, ptr %5, align 4
  %54 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %13, ptr noundef null) #6
  br label %55

55:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_sensorhub_timestamp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %16, label %28, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 48) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %18, i32 0, i32 3
  store i64 %3, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %18, i32 0, i32 4
  store i64 %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %18, i32 0, i32 5
  store i64 %5, ptr %25, align 8
  %26 = sub i64 %4, %5
  %27 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %18, i32 0, i32 6
  store i64 %26, ptr %27, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #6
  br label %28

28:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_sensorhub_timestamp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #4, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #6
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %24, i32 0, i32 3
  store i64 %3, ptr %39, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %24, i32 0, i32 4
  store i64 %4, ptr %40, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %24, i32 0, i32 5
  store i64 %5, ptr %41, align 8
  %42 = sub i64 %4, %5
  %43 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %24, i32 0, i32 6
  store i64 %42, ptr %43, align 8
  %44 = load i32, ptr %8, align 4
  %45 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 52, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %16, ptr noundef null) #6
  br label %46

46:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_sensorhub_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %16, label %28, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 48) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %18, i32 0, i32 3
  store i64 %3, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %18, i32 0, i32 4
  store i64 %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %18, i32 0, i32 5
  store i64 %5, ptr %25, align 8
  %26 = sub i64 %4, %5
  %27 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %18, i32 0, i32 6
  store i64 %26, ptr %27, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #6
  br label %28

28:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_sensorhub_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #4, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #6
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %24, i32 0, i32 3
  store i64 %3, ptr %39, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %24, i32 0, i32 4
  store i64 %4, ptr %40, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %24, i32 0, i32 5
  store i64 %5, ptr %41, align 8
  %42 = sub i64 %4, %5
  %43 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %24, i32 0, i32 6
  store i64 %42, ptr %43, align 8
  %44 = load i32, ptr %8, align 4
  %45 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 52, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %16, ptr noundef null) #6
  br label %46

46:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_sensorhub_filter(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %14, label %36, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 64) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %16, i32 0, i32 1
  store i64 %2, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %16, i32 0, i32 2
  store i64 %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 7
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %16, i32 0, i32 3
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %16, i32 0, i32 4
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %16, i32 0, i32 5
  store i64 %29, ptr %30, align 8
  %31 = load i64, ptr %1, align 8
  %32 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %16, i32 0, i32 6
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %16, i32 0, i32 7
  store i64 %34, ptr %35, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #6
  br label %36

36:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_sensorhub_filter(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #4, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #6
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #6
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %22, i32 0, i32 1
  store i64 %2, ptr %35, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %22, i32 0, i32 2
  store i64 %3, ptr %36, align 8
  %37 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 7
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %22, i32 0, i32 3
  store i64 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 8
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %22, i32 0, i32 4
  store i64 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %22, i32 0, i32 5
  store i64 %45, ptr %46, align 8
  %47 = load i64, ptr %1, align 8
  %48 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %22, i32 0, i32 6
  store i64 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %1, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %22, i32 0, i32 7
  store i64 %50, ptr %51, align 8
  %52 = load i32, ptr %6, align 4
  %53 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 68, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %14, ptr noundef null) #6
  br label %54

54:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_request_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_cros_ec_request_start.symbols) #6
  %18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %14, ptr noundef %17, i32 noundef %19, i32 noundef %21) #6
  %22 = tail call i32 @trace_handle_return(ptr noundef %10) #6
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_request_done(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_cros_ec_request_done.symbols) #6
  %18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %23, ptr noundef nonnull @trace_raw_output_cros_ec_request_done.symbols.189) #6
  %25 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %5, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.188, i32 noundef %12, i32 noundef %14, ptr noundef %17, i32 noundef %19, i32 noundef %21, ptr noundef %24, i32 noundef %26) #6
  %27 = tail call i32 @trace_handle_return(ptr noundef %10) #6
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ %27, %8 ], [ %6, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_sensorhub_timestamp(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %5, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %5, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %5, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %5, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.219, i32 noundef %11, i32 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21) #6
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_sensorhub_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %5, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %5, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %5, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %5, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.221, i32 noundef %11, i32 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21) #6
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_sensorhub_filter(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %5, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %5, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %5, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %5, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %5, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %5, i32 0, i32 7
  %23 = load i64, ptr %22, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.229, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %23) #6
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 823303}
