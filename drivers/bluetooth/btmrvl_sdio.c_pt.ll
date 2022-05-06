; ModuleID = '/llk/IR/drivers/bluetooth/btmrvl_sdio.c_pt.bc'
source_filename = "../drivers/bluetooth/btmrvl_sdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.btmrvl_sdio_device = type { ptr, ptr, ptr, i8, i16, i8 }
%struct.btmrvl_sdio_card_reg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.memory_type_mapping = type { [8 x i8], ptr, i32, i8 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btmrvl_sdio_card = type { ptr, i32, ptr, ptr, ptr, i8, i8, i16, i8, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.btmrvl_private = type { %struct.btmrvl_device, ptr, %struct.btmrvl_thread, ptr, ptr, ptr, %struct.spinlock, ptr, i8 }
%struct.btmrvl_device = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.btmrvl_thread = type { ptr, %struct.wait_queue_head, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.btmrvl_adapter = type { ptr, ptr, i32, %struct.sk_buff_head, i8, i8, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8 }
%struct.btmrvl_plt_wake_cfg = type { i32, i8 }

@btmrvl_sdio_ids = internal constant [10 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 735, i16 -28411, i32 ptrtoint (ptr @btmrvl_sdio_sd8688 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28390, i32 ptrtoint (ptr @btmrvl_sdio_sd8787 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28389, i32 ptrtoint (ptr @btmrvl_sdio_sd8787 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28374, i32 ptrtoint (ptr @btmrvl_sdio_sd8797 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28362, i32 ptrtoint (ptr @btmrvl_sdio_sd8887 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28370, i32 ptrtoint (ptr @btmrvl_sdio_sd8897 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28346, i32 ptrtoint (ptr @btmrvl_sdio_sd8977 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28342, i32 ptrtoint (ptr @btmrvl_sdio_sd8987 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28350, i32 ptrtoint (ptr @btmrvl_sdio_sd8997 to i32) }, %struct.sdio_device_id zeroinitializer], align 4
@__UNIQUE_ID_author437 = internal constant [34 x i8] c"author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description438 = internal constant [48 x i8] c"description=Marvell BT-over-SDIO driver ver 1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version439 = internal constant [12 x i8] c"version=1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_license440 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware441 = internal constant [32 x i8] c"firmware=mrvl/sd8688_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware442 = internal constant [25 x i8] c"firmware=mrvl/sd8688.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware443 = internal constant [32 x i8] c"firmware=mrvl/sd8787_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware444 = internal constant [32 x i8] c"firmware=mrvl/sd8797_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware445 = internal constant [32 x i8] c"firmware=mrvl/sd8887_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware446 = internal constant [32 x i8] c"firmware=mrvl/sd8897_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware447 = internal constant [36 x i8] c"firmware=mrvl/sdsd8977_combo_v2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware448 = internal constant [32 x i8] c"firmware=mrvl/sd8987_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware449 = internal constant [36 x i8] c"firmware=mrvl/sdsd8997_combo_v4.bin\00", section ".modinfo", align 1
@btmrvl_sdio_sd8688 = internal constant %struct.btmrvl_sdio_device { ptr @.str, ptr @.str.1, ptr @btmrvl_reg_8688, i8 0, i16 64, i8 0 }, align 4
@btmrvl_sdio_sd8787 = internal constant %struct.btmrvl_sdio_device { ptr null, ptr @.str.2, ptr @btmrvl_reg_87xx, i8 0, i16 256, i8 0 }, align 4
@btmrvl_sdio_sd8797 = internal constant %struct.btmrvl_sdio_device { ptr null, ptr @.str.3, ptr @btmrvl_reg_87xx, i8 0, i16 256, i8 0 }, align 4
@btmrvl_sdio_sd8887 = internal constant %struct.btmrvl_sdio_device { ptr null, ptr @.str.4, ptr @btmrvl_reg_8887, i8 1, i16 256, i8 0 }, align 4
@btmrvl_sdio_sd8897 = internal constant %struct.btmrvl_sdio_device { ptr null, ptr @.str.5, ptr @btmrvl_reg_8897, i8 1, i16 256, i8 1 }, align 4
@btmrvl_sdio_sd8977 = internal constant %struct.btmrvl_sdio_device { ptr null, ptr @.str.6, ptr @btmrvl_reg_89xx, i8 1, i16 256, i8 1 }, align 4
@btmrvl_sdio_sd8987 = internal constant %struct.btmrvl_sdio_device { ptr null, ptr @.str.7, ptr @btmrvl_reg_89xx, i8 1, i16 256, i8 1 }, align 4
@btmrvl_sdio_sd8997 = internal constant %struct.btmrvl_sdio_device { ptr null, ptr @.str.8, ptr @btmrvl_reg_89xx, i8 1, i16 256, i8 1 }, align 4
@.str = private unnamed_addr constant [23 x i8] c"mrvl/sd8688_helper.bin\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mrvl/sd8688.bin\00", align 1
@btmrvl_reg_8688 = internal constant %struct.btmrvl_sdio_card_reg { i8 3, i8 4, i8 5, i8 32, i8 16, i8 17, i8 0, i8 64, i8 65, i8 66, i8 67, i8 0, i8 1, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mrvl/sd8787_uapsta.bin\00", align 1
@btmrvl_reg_87xx = internal constant %struct.btmrvl_sdio_card_reg { i8 0, i8 2, i8 3, i8 48, i8 64, i8 65, i8 92, i8 96, i8 97, i8 98, i8 99, i8 120, i8 121, i8 122, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"mrvl/sd8797_uapsta.bin\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"mrvl/sd8887_uapsta.bin\00", align 1
@btmrvl_reg_8887 = internal constant %struct.btmrvl_sdio_card_reg { i8 0, i8 8, i8 12, i8 92, i8 108, i8 109, i8 -56, i8 -120, i8 -119, i8 -118, i8 -117, i8 -28, i8 -27, i8 -26, i8 1, i8 4, i8 -40, i8 0, i8 0, i8 0 }, align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"mrvl/sd8897_uapsta.bin\00", align 1
@btmrvl_reg_8897 = internal constant %struct.btmrvl_sdio_card_reg { i8 0, i8 2, i8 3, i8 80, i8 96, i8 97, i8 -68, i8 -64, i8 -63, i8 -62, i8 -61, i8 -40, i8 -39, i8 -38, i8 1, i8 1, i8 -52, i8 -30, i8 -29, i8 -22 }, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"mrvl/sdsd8977_combo_v2.bin\00", align 1
@btmrvl_reg_89xx = internal constant %struct.btmrvl_sdio_card_reg { i8 0, i8 8, i8 12, i8 92, i8 -8, i8 -7, i8 -56, i8 -24, i8 -23, i8 -22, i8 -21, i8 -28, i8 -27, i8 -26, i8 1, i8 4, i8 -40, i8 -16, i8 -15, i8 -8 }, align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"mrvl/sd8987_uapsta.bin\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"mrvl/sdsd8997_combo_v4.bin\00", align 1
@bt_mrvl_sdio = internal global %struct.sdio_driver { ptr @.str.10, ptr @btmrvl_sdio_ids, ptr @btmrvl_sdio_probe, ptr @btmrvl_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @btmrvl_sdio_pm_ops, ptr @btmrvl_sdio_coredump, ptr null } }, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"SDIO Driver Registration Failed\0A\00", align 1
@user_rmmod = internal unnamed_addr global i1 false, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"btmrvl_sdio\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@btmrvl_sdio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @btmrvl_sdio_suspend, ptr @btmrvl_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"vendor=0x%x, device=0x%x, class=%d, fn=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to register BT device!\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Downloading firmware failed!\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Initializing card failed!\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Register hdev failed!\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Error: card or function is NULL!\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"sdio_enable_func() failed: ret=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"sdio_claim_irq failed: ret=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"cannot set SDIO block size\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"sbi_interrupt(%p) card or priv is NULL, card=%p\0A\00", align 1
@sdio_ireg = internal unnamed_addr global i8 0, align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"sdio_readsb: read int hw_regs failed: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"sdio_readb: read int status failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"sdio_writeb: clear int status failed: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Unable to disable the host interrupt!\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"card or function is NULL!\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Failed to read FW downloading status!\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Failed to download helper!\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Failed to download firmware!\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"FW failed to be active in time!\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"request_firmware(helper) failed, error code = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"Unable to allocate buffer for helper. Terminating download\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Helper download poll status timeout @ %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"IO error during helper download @ %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"IO error in writing helper image EOF block\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"FAILED! ret=%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"request_firmware(firmware) failed, error code = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"Unable to allocate buffer for firmware. Terminating download\0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"FW download with helper poll status timeout @ %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [70 x i8] c"BASE0 register read failed: base0 = 0x%04X(%d). Terminating download\0A\00", align 1
@.str.40 = private unnamed_addr constant [70 x i8] c"BASE1 register read failed: base1 = 0x%04X(%d). Terminating download\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"FW download failure @%d, invalid length %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"FW download failure @%d, over max retry count\0A\00", align 1
@.str.43 = private unnamed_addr constant [64 x i8] c"FW CRC error indicated by the helper: len = 0x%04X, txlen = %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"FW download, writesb(%d) failed @%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"writeb failed (CFG)\0A\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"FW download over, size %d bytes\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"Unable to enable the host interrupt!\0A\00", align 1
@btmrvl_sdio_of_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8897-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8997-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.48 = private unnamed_addr constant [37 x i8] c"sdio device tree data not available\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"fail to parse irq_bt from device tree\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"bt_wake\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"Failed to request irq_bt %d (%d)\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"wake by bt\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"i=%d writesb failed: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"hex: %*ph\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"read rx_len failed\0A\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"invalid packet length: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"No free skb\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"readsb failed: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"Skip incorrect packet: hdrlen %d buffer %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"Unknown packet type:%d\0A\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"%s: cannot remain alive while suspended\0A\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"card or priv structure is not valid\0A\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"sdio_func is not specified\0A\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"HS not activated, suspend failed!\0A\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"Firmware dump not supported for this card!\0A\00", align 1
@mem_type_mapping_tbl = internal global [15 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"ITCM\00\00\00\00", ptr null, i32 0, i8 -16 }, %struct.memory_type_mapping { [8 x i8] c"DTCM\00\00\00\00", ptr null, i32 0, i8 -15 }, %struct.memory_type_mapping { [8 x i8] c"SQRAM\00\00\00", ptr null, i32 0, i8 -14 }, %struct.memory_type_mapping { [8 x i8] c"APU\00\00\00\00\00", ptr null, i32 0, i8 -13 }, %struct.memory_type_mapping { [8 x i8] c"CIU\00\00\00\00\00", ptr null, i32 0, i8 -12 }, %struct.memory_type_mapping { [8 x i8] c"ICU\00\00\00\00\00", ptr null, i32 0, i8 -11 }, %struct.memory_type_mapping { [8 x i8] c"MAC\00\00\00\00\00", ptr null, i32 0, i8 -10 }, %struct.memory_type_mapping { [8 x i8] c"EXT7\00\00\00\00", ptr null, i32 0, i8 -9 }, %struct.memory_type_mapping { [8 x i8] c"EXT8\00\00\00\00", ptr null, i32 0, i8 -8 }, %struct.memory_type_mapping { [8 x i8] c"EXT9\00\00\00\00", ptr null, i32 0, i8 -7 }, %struct.memory_type_mapping { [8 x i8] c"EXT10\00\00\00", ptr null, i32 0, i8 -6 }, %struct.memory_type_mapping { [8 x i8] c"EXT11\00\00\00", ptr null, i32 0, i8 -5 }, %struct.memory_type_mapping { [8 x i8] c"EXT12\00\00\00", ptr null, i32 0, i8 -4 }, %struct.memory_type_mapping { [8 x i8] c"EXT13\00\00\00", ptr null, i32 0, i8 -3 }, %struct.memory_type_mapping { [8 x i8] c"EXTLAST\00", ptr null, i32 0, i8 -2 }], align 4
@.str.66 = private unnamed_addr constant [34 x i8] c"== btmrvl firmware dump start ==\0A\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"SDIO read memory length err\0A\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"SDIO read err\0A\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"Firmware dump finished!\0A\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"SDIO Write MEMDUMP_FINISH ERR\0A\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"%s_SIZE=0x%x\0A\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"Vzalloc %s failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"Start %s output, please wait...\0A\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"Allocated buffer not enough\0A\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"%s done: size=0x%tx\0A\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"== btmrvl firmware dump end ==\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"Vzalloc fw_dump_data fail!\0A\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"== btmrvl firmware dump to /sys/class/devcoredump start\0A\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"========Start dump %s========\0A\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"\0A========End dump========\0A\00", align 1
@.str.81 = private unnamed_addr constant [55 x i8] c"== btmrvl firmware dump to /sys/class/devcoredump end\0A\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"SDIO Func%d (%#x-%#x): \00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"SDIO write err\0A\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"The ctrl reg was changed, re-try again!\0A\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"Fail to pull ctrl_data\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author437, ptr @__UNIQUE_ID_description438, ptr @__UNIQUE_ID_firmware441, ptr @__UNIQUE_ID_firmware442, ptr @__UNIQUE_ID_firmware443, ptr @__UNIQUE_ID_firmware444, ptr @__UNIQUE_ID_firmware445, ptr @__UNIQUE_ID_firmware446, ptr @__UNIQUE_ID_firmware447, ptr @__UNIQUE_ID_firmware448, ptr @__UNIQUE_ID_firmware449, ptr @__UNIQUE_ID_license440, ptr @__UNIQUE_ID_version439], section "llvm.metadata"

@__mod_sdio__btmrvl_sdio_ids_device_table = dso_local alias [10 x %struct.sdio_device_id], ptr @btmrvl_sdio_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @sdio_register_driver(ptr noundef nonnull @bt_mrvl_sdio) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #12
  br label %5

4:                                                ; preds = %0
  store i1 false, ptr @user_rmmod, align 1
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ -19, %3 ], [ 0, %4 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  store i1 true, ptr @user_rmmod, align 1
  tail call void @sdio_unregister_driver(ptr noundef nonnull @bt_mrvl_sdio) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.sdio_device_id, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.sdio_device_id, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = load i8, ptr %1, align 4
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef %17, i32 noundef %19, i32 noundef %21) #12
  %22 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 40, i32 noundef 3520) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %475, label %25

25:                                               ; preds = %2
  store ptr %0, ptr %23, align 4
  %26 = getelementptr inbounds %struct.sdio_device_id, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = inttoptr i32 %27 to ptr
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 3
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %30, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 4
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %30, i32 0, i32 4
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 7
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %30, i32 0, i32 3
  %43 = load i8, ptr %42, align 4, !range !8
  %44 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 5
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %30, i32 0, i32 5
  %46 = load i8, ptr %45, align 4, !range !8
  %47 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 6
  store i8 %46, ptr %47, align 1
  br label %48

48:                                               ; preds = %29, %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  %49 = icmp eq ptr %0, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %151

51:                                               ; preds = %48
  tail call void @sdio_claim_host(ptr noundef nonnull %0) #12
  %52 = tail call i32 @sdio_enable_func(ptr noundef nonnull %0) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, i32 noundef %52) #12
  store i32 -5, ptr %11, align 4
  br label %148

55:                                               ; preds = %51
  %56 = tail call i32 @sdio_claim_irq(ptr noundef nonnull %0, ptr noundef nonnull @btmrvl_sdio_interrupt) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, i32 noundef %56) #12
  store i32 -5, ptr %11, align 4
  br label %146

59:                                               ; preds = %55
  %60 = load ptr, ptr %23, align 4
  %61 = tail call i32 @sdio_set_block_size(ptr noundef %60, i32 noundef 64) #12
  store i32 %61, ptr %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #12
  store i32 -5, ptr %11, align 4
  br label %144

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %66, i32 0, i32 11
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = call zeroext i8 @sdio_readb(ptr noundef nonnull %0, i32 noundef %69, ptr noundef nonnull %11) #12
  %71 = load i32, ptr %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 -5, ptr %11, align 4
  br label %144

74:                                               ; preds = %64
  %75 = zext i8 %70 to i32
  %76 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  %77 = load ptr, ptr %65, align 4
  %78 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %77, i32 0, i32 12
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = call zeroext i8 @sdio_readb(ptr noundef nonnull %0, i32 noundef %80, ptr noundef nonnull %11) #12
  %82 = load i32, ptr %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 -5, ptr %11, align 4
  br label %144

85:                                               ; preds = %74
  %86 = zext i8 %81 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = load i32, ptr %76, align 4
  %89 = or i32 %88, %87
  store i32 %89, ptr %76, align 4
  %90 = load ptr, ptr %65, align 4
  %91 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %90, i32 0, i32 13
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = call zeroext i8 @sdio_readb(ptr noundef nonnull %0, i32 noundef %93, ptr noundef nonnull %11) #12
  %95 = load i32, ptr %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  store i32 -5, ptr %11, align 4
  br label %144

98:                                               ; preds = %85
  %99 = zext i8 %94 to i32
  %100 = shl nuw nsw i32 %99, 16
  %101 = load i32, ptr %76, align 4
  %102 = or i32 %101, %100
  store i32 %102, ptr %76, align 4
  %103 = load ptr, ptr %65, align 4
  %104 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %103, i32 0, i32 14
  %105 = load i8, ptr %104, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %142, label %107

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %103, i32 0, i32 15
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = call zeroext i8 @sdio_readb(ptr noundef nonnull %0, i32 noundef %110, ptr noundef nonnull %11) #12
  %112 = load i32, ptr %11, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 -5, ptr %11, align 4
  br label %144

115:                                              ; preds = %107
  %116 = or i8 %111, 63
  %117 = load ptr, ptr %65, align 4
  %118 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %117, i32 0, i32 15
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  call void @sdio_writeb(ptr noundef nonnull %0, i8 noundef zeroext %116, i32 noundef %120, ptr noundef nonnull %11) #12
  %121 = load i32, ptr %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 -5, ptr %11, align 4
  br label %144

124:                                              ; preds = %115
  %125 = load ptr, ptr %65, align 4
  %126 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %125, i32 0, i32 16
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = call zeroext i8 @sdio_readb(ptr noundef nonnull %0, i32 noundef %128, ptr noundef nonnull %11) #12
  %130 = load i32, ptr %11, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 -5, ptr %11, align 4
  br label %144

133:                                              ; preds = %124
  %134 = or i8 %129, 16
  %135 = load ptr, ptr %65, align 4
  %136 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %135, i32 0, i32 16
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  call void @sdio_writeb(ptr noundef nonnull %0, i8 noundef zeroext %134, i32 noundef %138, ptr noundef nonnull %11) #12
  %139 = load i32, ptr %11, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store i32 -5, ptr %11, align 4
  br label %144

142:                                              ; preds = %133, %98
  %143 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  store ptr %23, ptr %143, align 8
  call void @sdio_release_host(ptr noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %152

144:                                              ; preds = %141, %132, %123, %114, %97, %84, %73, %63
  %145 = call i32 @sdio_release_irq(ptr noundef nonnull %0) #12
  br label %146

146:                                              ; preds = %144, %58
  %147 = call i32 @sdio_disable_func(ptr noundef nonnull %0) #12
  br label %148

148:                                              ; preds = %146, %54
  call void @sdio_release_host(ptr noundef nonnull %0) #12
  %149 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148, %50
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12) #12
  br label %475

152:                                              ; preds = %148, %142
  call fastcc void @btmrvl_sdio_disable_host_int(ptr noundef nonnull %23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 0, ptr %10, align 4, !annotation !9
  %153 = load ptr, ptr %23, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %396

156:                                              ; preds = %152
  %157 = call fastcc i32 @btmrvl_sdio_verify_fw_download(ptr noundef nonnull %23, i32 noundef 1) #12
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %391, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %23, align 4
  call void @sdio_claim_host(ptr noundef %160) #12
  %161 = load ptr, ptr %23, align 4
  %162 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %163, i32 0, i32 7
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = call zeroext i8 @sdio_readb(ptr noundef %161, i32 noundef %166, ptr noundef nonnull %10) #12
  %168 = load i32, ptr %10, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %159
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26) #12
  store i32 -5, ptr %10, align 4
  br label %392

171:                                              ; preds = %159
  %172 = icmp eq i8 %167, 0
  br i1 %172, label %173, label %384

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %252, label %177

177:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store ptr null, ptr %9, align 4
  %178 = load ptr, ptr %23, align 4
  %179 = getelementptr inbounds %struct.sdio_func, ptr %178, i32 0, i32 1
  %180 = call i32 @request_firmware(ptr noundef nonnull %9, ptr noundef nonnull %175, ptr noundef %179) #12
  %181 = icmp sgt i32 %180, -1
  %182 = load ptr, ptr %9, align 4
  %183 = icmp ne ptr %182, null
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.30, i32 noundef %180) #12
  br label %246

186:                                              ; preds = %177
  %187 = getelementptr inbounds %struct.firmware, ptr %182, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = load i32, ptr %182, align 4
  %190 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %191 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %190, i32 noundef 3520, i32 noundef 2312) #13
  %192 = icmp eq ptr %191, null
  br i1 %192, label %199, label %193

193:                                              ; preds = %186
  %194 = getelementptr i8, ptr %191, i32 1
  %195 = getelementptr i8, ptr %191, i32 2
  %196 = getelementptr i8, ptr %191, i32 3
  %197 = getelementptr i8, ptr %191, i32 4
  %198 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 1
  br label %200

199:                                              ; preds = %186
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31) #12
  br label %246

200:                                              ; preds = %229, %193
  %201 = phi i32 [ %238, %229 ], [ 0, %193 ]
  %202 = phi i32 [ %231, %229 ], [ 124, %193 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  br label %203

203:                                              ; preds = %217, %200
  %204 = phi i32 [ 0, %200 ], [ %219, %217 ]
  %205 = load ptr, ptr %23, align 4
  %206 = load ptr, ptr %162, align 4
  %207 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %206, i32 0, i32 3
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i32
  %210 = call zeroext i8 @sdio_readb(ptr noundef %205, i32 noundef %209, ptr noundef nonnull %8) #12
  %211 = load i32, ptr %8, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %203
  %214 = and i8 %210, 9
  %215 = icmp eq i8 %214, 9
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %227

217:                                              ; preds = %213
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %218(i32 noundef 214748) #12
  %219 = add nuw nsw i32 %204, 1
  %220 = icmp eq i32 %219, 100000
  br i1 %220, label %221, label %203

221:                                              ; preds = %217
  store i32 -110, ptr %8, align 4
  br label %222

222:                                              ; preds = %221, %203
  %223 = phi i32 [ -110, %221 ], [ %211, %203 ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, i32 noundef %223) #12
  %224 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, i32 noundef %201) #12
  br label %246

227:                                              ; preds = %222, %216
  %228 = icmp sgt i32 %189, %201
  br i1 %228, label %229, label %240

229:                                              ; preds = %227
  %230 = sub i32 %189, %201
  %231 = call i32 @llvm.umin.i32(i32 %230, i32 %202) #12
  %232 = trunc i32 %231 to i8
  store i8 %232, ptr %191, align 8
  store i8 0, ptr %194, align 1
  store i8 0, ptr %195, align 2
  store i8 0, ptr %196, align 1
  %233 = getelementptr i8, ptr %188, i32 %201
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %197, ptr align 1 %233, i32 %231, i1 false) #12
  %234 = load ptr, ptr %23, align 4
  %235 = load i32, ptr %198, align 4
  %236 = call i32 @sdio_writesb(ptr noundef %234, i32 noundef %235, ptr noundef nonnull %191, i32 noundef 128) #12
  %237 = icmp slt i32 %236, 0
  %238 = add i32 %231, %201
  br i1 %237, label %239, label %200

239:                                              ; preds = %229
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, i32 noundef %201) #12
  br label %246

240:                                              ; preds = %227
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %191, i8 0, i32 64, i1 false) #12
  %241 = load ptr, ptr %23, align 4
  %242 = load i32, ptr %198, align 4
  %243 = call i32 @sdio_writesb(ptr noundef %241, i32 noundef %242, ptr noundef nonnull %191, i32 noundef 64) #12
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34) #12
  br label %246

246:                                              ; preds = %245, %240, %239, %226, %199, %185
  %247 = phi ptr [ %191, %226 ], [ %191, %245 ], [ %191, %239 ], [ null, %199 ], [ null, %185 ], [ %191, %240 ]
  %248 = phi i32 [ %224, %226 ], [ %243, %245 ], [ %236, %239 ], [ -12, %199 ], [ -2, %185 ], [ 0, %240 ]
  call void @kfree(ptr noundef %247) #12
  %249 = load ptr, ptr %9, align 4
  call void @release_firmware(ptr noundef %249) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  store i32 %248, ptr %10, align 4
  %250 = icmp eq i32 %248, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.27) #12
  store i32 -5, ptr %10, align 4
  br label %392

252:                                              ; preds = %246, %173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %253 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 7
  %254 = load i16, ptr %253, align 2
  %255 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 3
  %256 = load ptr, ptr %255, align 4
  %257 = load ptr, ptr %23, align 4
  %258 = getelementptr inbounds %struct.sdio_func, ptr %257, i32 0, i32 1
  %259 = call i32 @request_firmware(ptr noundef nonnull %6, ptr noundef %256, ptr noundef %258) #12
  store i32 %259, ptr %7, align 4
  %260 = icmp sgt i32 %259, -1
  %261 = load ptr, ptr %6, align 4
  %262 = icmp ne ptr %261, null
  %263 = select i1 %260, i1 %262, i1 false
  br i1 %263, label %265, label %264

264:                                              ; preds = %252
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.36, i32 noundef %259) #12
  store i32 -2, ptr %7, align 4
  br label %378

265:                                              ; preds = %252
  %266 = getelementptr inbounds %struct.firmware, ptr %261, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = load i32, ptr %261, align 4
  %269 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %270 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %269, i32 noundef 3520, i32 noundef 2312) #13
  %271 = icmp eq ptr %270, null
  br i1 %271, label %276, label %272

272:                                              ; preds = %265
  %273 = zext i16 %254 to i32
  %274 = add nsw i32 %273, -1
  %275 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 1
  br label %277

276:                                              ; preds = %265
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.37) #12
  store i32 -12, ptr %7, align 4
  br label %378

277:                                              ; preds = %375, %272
  %278 = phi i32 [ %376, %375 ], [ 0, %272 ]
  %279 = phi i32 [ %360, %375 ], [ 0, %272 ]
  %280 = phi i32 [ %361, %375 ], [ 0, %272 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  br label %281

281:                                              ; preds = %295, %277
  %282 = phi i32 [ 0, %277 ], [ %297, %295 ]
  %283 = load ptr, ptr %23, align 4
  %284 = load ptr, ptr %162, align 4
  %285 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %284, i32 0, i32 3
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = call zeroext i8 @sdio_readb(ptr noundef %283, i32 noundef %287, ptr noundef nonnull %5) #12
  %289 = load i32, ptr %5, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %281
  %292 = and i8 %288, 9
  %293 = icmp eq i8 %292, 9
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %7, align 4
  br label %305

295:                                              ; preds = %291
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %296(i32 noundef 214748) #12
  %297 = add nuw nsw i32 %282, 1
  %298 = icmp eq i32 %297, 100000
  br i1 %298, label %299, label %281

299:                                              ; preds = %295
  store i32 -110, ptr %5, align 4
  br label %300

300:                                              ; preds = %299, %281
  %301 = phi i32 [ -110, %299 ], [ %289, %281 ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, i32 noundef %301) #12
  %302 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  store i32 %302, ptr %7, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.38, i32 noundef %278) #12
  br label %378

305:                                              ; preds = %300, %294
  %306 = icmp ugt i32 %268, %278
  br i1 %306, label %307, label %377

307:                                              ; preds = %336, %305
  %308 = phi i32 [ %338, %336 ], [ 0, %305 ]
  %309 = load ptr, ptr %23, align 4
  %310 = load ptr, ptr %162, align 4
  %311 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %310, i32 0, i32 4
  %312 = load i8, ptr %311, align 1
  %313 = zext i8 %312 to i32
  %314 = call zeroext i8 @sdio_readb(ptr noundef %309, i32 noundef %313, ptr noundef nonnull %7) #12
  %315 = load i32, ptr %7, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %307
  %318 = zext i8 %314 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39, i32 noundef %318, i32 noundef %318) #12
  store i32 -5, ptr %7, align 4
  br label %378

319:                                              ; preds = %307
  %320 = load ptr, ptr %23, align 4
  %321 = load ptr, ptr %162, align 4
  %322 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %321, i32 0, i32 5
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i32
  %325 = call zeroext i8 @sdio_readb(ptr noundef %320, i32 noundef %324, ptr noundef nonnull %7) #12
  %326 = load i32, ptr %7, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %319
  %329 = zext i8 %325 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, i32 noundef %329, i32 noundef %329) #12
  store i32 -5, ptr %7, align 4
  br label %378

330:                                              ; preds = %319
  %331 = zext i8 %325 to i16
  %332 = shl nuw i16 %331, 8
  %333 = zext i8 %314 to i16
  %334 = or i16 %332, %333
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %337(i32 noundef 2147480) #12
  %338 = add nuw nsw i32 %308, 1
  %339 = icmp eq i32 %338, 100
  br i1 %339, label %377, label %307

340:                                              ; preds = %330
  %341 = zext i16 %334 to i32
  %342 = icmp ugt i16 %334, 2312
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.41, i32 noundef %278, i32 noundef %341) #12
  store i32 -22, ptr %7, align 4
  br label %378

344:                                              ; preds = %340
  %345 = and i32 %341, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %344
  %348 = add i32 %280, 1
  %349 = icmp sgt i32 %348, 2
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.42, i32 noundef %278) #12
  store i32 -5, ptr %7, align 4
  br label %378

351:                                              ; preds = %347
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.43, i32 noundef %341, i32 noundef %341) #12
  br label %358

352:                                              ; preds = %344
  %353 = sub i32 %268, %278
  %354 = call i32 @llvm.umin.i32(i32 %353, i32 %341) #12
  %355 = add nsw i32 %274, %354
  %356 = sdiv i32 %355, %273
  %357 = getelementptr i8, ptr %267, i32 %278
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %270, ptr align 1 %357, i32 %354, i1 false) #12
  br label %358

358:                                              ; preds = %352, %351
  %359 = phi i32 [ 0, %351 ], [ %354, %352 ]
  %360 = phi i32 [ %279, %351 ], [ %356, %352 ]
  %361 = phi i32 [ %348, %351 ], [ 0, %352 ]
  %362 = load ptr, ptr %23, align 4
  %363 = load i32, ptr %275, align 4
  %364 = mul i32 %360, %273
  %365 = call i32 @sdio_writesb(ptr noundef %362, i32 noundef %363, ptr noundef nonnull %270, i32 noundef %364) #12
  store i32 %365, ptr %7, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %358
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.44, i32 noundef %361, i32 noundef %278) #12
  %368 = load ptr, ptr %23, align 4
  %369 = load ptr, ptr %162, align 4
  %370 = load i8, ptr %369, align 1
  %371 = zext i8 %370 to i32
  call void @sdio_writeb(ptr noundef %368, i8 noundef zeroext 4, i32 noundef %371, ptr noundef nonnull %7) #12
  %372 = load i32, ptr %7, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %367
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.45) #12
  br label %375

375:                                              ; preds = %374, %367, %358
  %376 = add i32 %359, %278
  br label %277

377:                                              ; preds = %336, %305
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.46, i32 noundef %278) #12
  store i32 0, ptr %7, align 4
  br label %378

378:                                              ; preds = %377, %350, %343, %328, %317, %304, %276, %264
  %379 = phi ptr [ %270, %304 ], [ %270, %377 ], [ %270, %317 ], [ %270, %328 ], [ %270, %343 ], [ %270, %350 ], [ null, %276 ], [ null, %264 ]
  call void @kfree(ptr noundef %379) #12
  %380 = load ptr, ptr %6, align 4
  call void @release_firmware(ptr noundef %380) #12
  %381 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %378
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28) #12
  store i32 -5, ptr %10, align 4
  br label %392

384:                                              ; preds = %378, %171
  %385 = phi i32 [ 100, %378 ], [ 1000, %171 ]
  %386 = call fastcc i32 @btmrvl_sdio_verify_fw_download(ptr noundef nonnull %23, i32 noundef %385) #12
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %384
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29) #12
  store i32 -110, ptr %10, align 4
  br label %392

389:                                              ; preds = %384
  %390 = load ptr, ptr %23, align 4
  call void @sdio_release_host(ptr noundef %390) #12
  br label %391

391:                                              ; preds = %389, %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %397

392:                                              ; preds = %388, %383, %251, %170
  %393 = load ptr, ptr %23, align 4
  call void @sdio_release_host(ptr noundef %393) #12
  %394 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %392, %155
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13) #12
  br label %464

397:                                              ; preds = %392, %391
  %398 = load ptr, ptr %23, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %423, label %400

400:                                              ; preds = %397
  call void @sdio_claim_host(ptr noundef nonnull %398) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %401 = load ptr, ptr %23, align 4
  %402 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 4
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %403, i32 0, i32 1
  %405 = load i8, ptr %404, align 1
  %406 = zext i8 %405 to i32
  call void @sdio_writeb(ptr noundef %401, i8 noundef zeroext 3, i32 noundef %406, ptr noundef nonnull %4) #12
  %407 = load i32, ptr %4, align 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %400
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.47) #12
  br label %410

410:                                              ; preds = %409, %400
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %411 = load ptr, ptr %23, align 4
  %412 = load ptr, ptr %402, align 4
  %413 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %412, i32 0, i32 10
  %414 = load i8, ptr %413, align 1
  %415 = zext i8 %414 to i32
  %416 = call zeroext i8 @sdio_readb(ptr noundef %411, i32 noundef %415, ptr noundef nonnull %3) #12
  %417 = load i32, ptr %3, align 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %410
  %420 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 8
  store i8 %416, ptr %420, align 4
  br label %421

421:                                              ; preds = %419, %410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %422 = load ptr, ptr %23, align 4
  call void @sdio_release_host(ptr noundef %422) #12
  br label %423

423:                                              ; preds = %421, %397
  %424 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 25
  %425 = load ptr, ptr %424, align 8
  %426 = icmp eq ptr %425, null
  br i1 %426, label %430, label %427

427:                                              ; preds = %423
  %428 = call ptr @of_match_node(ptr noundef nonnull @btmrvl_sdio_of_match_table, ptr noundef nonnull %425) #12
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %427, %423
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.48) #14
  br label %452

431:                                              ; preds = %427
  %432 = load ptr, ptr %424, align 8
  %433 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 10
  store ptr %432, ptr %433, align 4
  %434 = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 8, i32 noundef 3520) #12
  %435 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 11
  store ptr %434, ptr %435, align 4
  %436 = icmp eq ptr %434, null
  br i1 %436, label %452, label %437

437:                                              ; preds = %431
  %438 = load ptr, ptr %433, align 4
  %439 = icmp eq ptr %438, null
  br i1 %439, label %452, label %440

440:                                              ; preds = %437
  %441 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %438, i32 noundef 0) #12
  store i32 %441, ptr %434, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.49) #14
  store i32 -1, ptr %434, align 4
  br label %452

444:                                              ; preds = %440
  %445 = call i32 @devm_request_threaded_irq(ptr noundef %22, i32 noundef %441, ptr noundef nonnull @btmrvl_wake_irq_bt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef %23) #12
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %449, label %447

447:                                              ; preds = %444
  %448 = load i32, ptr %434, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.51, i32 noundef %448, i32 noundef %445) #14
  br label %449

449:                                              ; preds = %447, %444
  %450 = call i32 @device_init_wakeup(ptr noundef %22, i1 noundef zeroext true) #12
  %451 = load i32, ptr %434, align 4
  call void @disable_irq(i32 noundef %451) #12
  br label %452

452:                                              ; preds = %449, %443, %437, %431, %430
  %453 = call ptr @btmrvl_add_card(ptr noundef nonnull %23) #12
  %454 = icmp eq ptr %453, null
  br i1 %454, label %462, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %23, i32 0, i32 9
  store ptr %453, ptr %456, align 4
  %457 = getelementptr inbounds %struct.btmrvl_private, ptr %453, i32 0, i32 3
  store ptr @btmrvl_sdio_host_to_card, ptr %457, align 4
  %458 = getelementptr inbounds %struct.btmrvl_private, ptr %453, i32 0, i32 4
  store ptr @btmrvl_sdio_wakeup_fw, ptr %458, align 4
  %459 = getelementptr inbounds %struct.btmrvl_private, ptr %453, i32 0, i32 5
  store ptr @btmrvl_sdio_process_int_status, ptr %459, align 4
  %460 = call i32 @btmrvl_register_hdev(ptr noundef nonnull %453) #12
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %475, label %462

462:                                              ; preds = %455, %452
  %463 = phi ptr [ @.str.14, %452 ], [ @.str.15, %455 ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull %463) #12
  call fastcc void @btmrvl_sdio_disable_host_int(ptr noundef nonnull %23)
  br label %464

464:                                              ; preds = %462, %396
  %465 = load ptr, ptr %23, align 4
  %466 = icmp eq ptr %465, null
  br i1 %466, label %475, label %467

467:                                              ; preds = %464
  call void @sdio_claim_host(ptr noundef nonnull %465) #12
  %468 = load ptr, ptr %23, align 4
  %469 = call i32 @sdio_release_irq(ptr noundef %468) #12
  %470 = load ptr, ptr %23, align 4
  %471 = call i32 @sdio_disable_func(ptr noundef %470) #12
  %472 = load ptr, ptr %23, align 4
  call void @sdio_release_host(ptr noundef %472) #12
  %473 = load ptr, ptr %23, align 4
  %474 = getelementptr inbounds %struct.sdio_func, ptr %473, i32 0, i32 1, i32 8
  store ptr null, ptr %474, align 8
  br label %475

475:                                              ; preds = %467, %464, %455, %151, %2
  %476 = phi i32 [ -19, %151 ], [ -12, %2 ], [ 0, %455 ], [ -19, %464 ], [ -19, %467 ]
  ret i32 %476
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @btmrvl_sdio_remove(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load i1, ptr @user_rmmod, align 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %5, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @btmrvl_send_module_cfg_cmd(ptr noundef %11, i8 noundef zeroext -14) #12
  tail call fastcc void @btmrvl_sdio_disable_host_int(ptr noundef nonnull %5)
  br label %13

13:                                               ; preds = %9, %7
  %14 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %5, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.btmrvl_private, ptr %15, i32 0, i32 8
  store i8 1, ptr %16, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  tail call void @sdio_claim_host(ptr noundef nonnull %17) #12
  %20 = load ptr, ptr %5, align 4
  %21 = tail call i32 @sdio_release_irq(ptr noundef %20) #12
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @sdio_disable_func(ptr noundef %22) #12
  %24 = load ptr, ptr %5, align 4
  tail call void @sdio_release_host(ptr noundef %24) #12
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.sdio_func, ptr %25, i32 0, i32 1, i32 8
  store ptr null, ptr %26, align 8
  br label %27

27:                                               ; preds = %19, %13
  %28 = load ptr, ptr %14, align 4
  %29 = tail call i32 @btmrvl_remove_card(ptr noundef %28) #12
  br label %30

30:                                               ; preds = %27, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @btmrvl_sdio_coredump(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 1
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %11, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #12
  br label %24

17:                                               ; preds = %13
  tail call void @sdio_claim_host(ptr noundef nonnull %14) #12
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %11, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  call void @sdio_writeb(ptr noundef %18, i8 noundef zeroext 2, i32 noundef %22, ptr noundef nonnull %3) #12
  %23 = load ptr, ptr %11, align 4
  call void @sdio_release_host(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %17, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %25 = load ptr, ptr %11, align 4
  call void @sdio_claim_host(ptr noundef %25) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false) #12
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef 0, i32 noundef 9) #12
  %27 = getelementptr i8, ptr %5, i32 %26
  %28 = load ptr, ptr %11, align 4
  %29 = call zeroext i8 @sdio_f0_readb(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %4) #12
  %30 = load i32, ptr %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %107

32:                                               ; preds = %24
  %33 = zext i8 %29 to i32
  %34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %27, ptr noundef nonnull @.str.83, i32 noundef %33) #12
  %35 = getelementptr i8, ptr %27, i32 %34
  %36 = load ptr, ptr %11, align 4
  %37 = call zeroext i8 @sdio_f0_readb(ptr noundef %36, i32 noundef 1, ptr noundef nonnull %4) #12
  %38 = load i32, ptr %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %107

40:                                               ; preds = %32
  %41 = zext i8 %37 to i32
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %35, ptr noundef nonnull @.str.83, i32 noundef %41) #12
  %43 = getelementptr i8, ptr %35, i32 %42
  %44 = load ptr, ptr %11, align 4
  %45 = call zeroext i8 @sdio_f0_readb(ptr noundef %44, i32 noundef 2, ptr noundef nonnull %4) #12
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %107

48:                                               ; preds = %40
  %49 = zext i8 %45 to i32
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %43, ptr noundef nonnull @.str.83, i32 noundef %49) #12
  %51 = getelementptr i8, ptr %43, i32 %50
  %52 = load ptr, ptr %11, align 4
  %53 = call zeroext i8 @sdio_f0_readb(ptr noundef %52, i32 noundef 3, ptr noundef nonnull %4) #12
  %54 = load i32, ptr %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %107

56:                                               ; preds = %48
  %57 = zext i8 %53 to i32
  %58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %51, ptr noundef nonnull @.str.83, i32 noundef %57) #12
  %59 = getelementptr i8, ptr %51, i32 %58
  %60 = load ptr, ptr %11, align 4
  %61 = call zeroext i8 @sdio_f0_readb(ptr noundef %60, i32 noundef 4, ptr noundef nonnull %4) #12
  %62 = load i32, ptr %4, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %56
  %65 = zext i8 %61 to i32
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %59, ptr noundef nonnull @.str.83, i32 noundef %65) #12
  %67 = getelementptr i8, ptr %59, i32 %66
  %68 = load ptr, ptr %11, align 4
  %69 = call zeroext i8 @sdio_f0_readb(ptr noundef %68, i32 noundef 5, ptr noundef nonnull %4) #12
  %70 = load i32, ptr %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %64
  %73 = zext i8 %69 to i32
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %67, ptr noundef nonnull @.str.83, i32 noundef %73) #12
  %75 = getelementptr i8, ptr %67, i32 %74
  %76 = load ptr, ptr %11, align 4
  %77 = call zeroext i8 @sdio_f0_readb(ptr noundef %76, i32 noundef 6, ptr noundef nonnull %4) #12
  %78 = load i32, ptr %4, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %72
  %81 = zext i8 %77 to i32
  %82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %75, ptr noundef nonnull @.str.83, i32 noundef %81) #12
  %83 = getelementptr i8, ptr %75, i32 %82
  %84 = load ptr, ptr %11, align 4
  %85 = call zeroext i8 @sdio_f0_readb(ptr noundef %84, i32 noundef 7, ptr noundef nonnull %4) #12
  %86 = load i32, ptr %4, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %80
  %89 = zext i8 %85 to i32
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %83, ptr noundef nonnull @.str.83, i32 noundef %89) #12
  %91 = getelementptr i8, ptr %83, i32 %90
  %92 = load ptr, ptr %11, align 4
  %93 = call zeroext i8 @sdio_f0_readb(ptr noundef %92, i32 noundef 8, ptr noundef nonnull %4) #12
  %94 = load i32, ptr %4, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = zext i8 %93 to i32
  %98 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %91, ptr noundef nonnull @.str.83, i32 noundef %97) #12
  %99 = getelementptr i8, ptr %91, i32 %98
  %100 = load ptr, ptr %11, align 4
  %101 = call zeroext i8 @sdio_f0_readb(ptr noundef %100, i32 noundef 9, ptr noundef nonnull %4) #12
  %102 = load i32, ptr %4, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = zext i8 %101 to i32
  %106 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %99, ptr noundef nonnull @.str.83, i32 noundef %105) #12
  br label %109

107:                                              ; preds = %96, %88, %80, %72, %64, %56, %48, %40, %32, %24
  %108 = phi ptr [ %27, %24 ], [ %35, %32 ], [ %43, %40 ], [ %51, %48 ], [ %59, %56 ], [ %67, %64 ], [ %75, %72 ], [ %83, %80 ], [ %91, %88 ], [ %99, %96 ]
  store i32 5395013, ptr %108, align 1
  br label %109

109:                                              ; preds = %107, %104
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.85, ptr noundef nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false) #12
  %110 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.82, i32 noundef 2, i32 noundef 0, i32 noundef 9) #12
  %111 = getelementptr i8, ptr %5, i32 %110
  %112 = load ptr, ptr %11, align 4
  %113 = call zeroext i8 @sdio_readb(ptr noundef %112, i32 noundef 0, ptr noundef nonnull %4) #12
  %114 = load i32, ptr %4, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %182, %174, %166, %158, %150, %142, %134, %126, %118, %109
  %117 = phi ptr [ %111, %109 ], [ %121, %118 ], [ %129, %126 ], [ %137, %134 ], [ %145, %142 ], [ %153, %150 ], [ %161, %158 ], [ %169, %166 ], [ %177, %174 ], [ %185, %182 ]
  store i32 5395013, ptr %117, align 1
  br label %193

118:                                              ; preds = %109
  %119 = zext i8 %113 to i32
  %120 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %111, ptr noundef nonnull @.str.83, i32 noundef %119) #12
  %121 = getelementptr i8, ptr %111, i32 %120
  %122 = load ptr, ptr %11, align 4
  %123 = call zeroext i8 @sdio_readb(ptr noundef %122, i32 noundef 1, ptr noundef nonnull %4) #12
  %124 = load i32, ptr %4, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %116

126:                                              ; preds = %118
  %127 = zext i8 %123 to i32
  %128 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %121, ptr noundef nonnull @.str.83, i32 noundef %127) #12
  %129 = getelementptr i8, ptr %121, i32 %128
  %130 = load ptr, ptr %11, align 4
  %131 = call zeroext i8 @sdio_readb(ptr noundef %130, i32 noundef 2, ptr noundef nonnull %4) #12
  %132 = load i32, ptr %4, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %116

134:                                              ; preds = %126
  %135 = zext i8 %131 to i32
  %136 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %129, ptr noundef nonnull @.str.83, i32 noundef %135) #12
  %137 = getelementptr i8, ptr %129, i32 %136
  %138 = load ptr, ptr %11, align 4
  %139 = call zeroext i8 @sdio_readb(ptr noundef %138, i32 noundef 3, ptr noundef nonnull %4) #12
  %140 = load i32, ptr %4, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %116

142:                                              ; preds = %134
  %143 = zext i8 %139 to i32
  %144 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %137, ptr noundef nonnull @.str.83, i32 noundef %143) #12
  %145 = getelementptr i8, ptr %137, i32 %144
  %146 = load ptr, ptr %11, align 4
  %147 = call zeroext i8 @sdio_readb(ptr noundef %146, i32 noundef 4, ptr noundef nonnull %4) #12
  %148 = load i32, ptr %4, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %116

150:                                              ; preds = %142
  %151 = zext i8 %147 to i32
  %152 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %145, ptr noundef nonnull @.str.83, i32 noundef %151) #12
  %153 = getelementptr i8, ptr %145, i32 %152
  %154 = load ptr, ptr %11, align 4
  %155 = call zeroext i8 @sdio_readb(ptr noundef %154, i32 noundef 5, ptr noundef nonnull %4) #12
  %156 = load i32, ptr %4, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %116

158:                                              ; preds = %150
  %159 = zext i8 %155 to i32
  %160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %153, ptr noundef nonnull @.str.83, i32 noundef %159) #12
  %161 = getelementptr i8, ptr %153, i32 %160
  %162 = load ptr, ptr %11, align 4
  %163 = call zeroext i8 @sdio_readb(ptr noundef %162, i32 noundef 6, ptr noundef nonnull %4) #12
  %164 = load i32, ptr %4, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %116

166:                                              ; preds = %158
  %167 = zext i8 %163 to i32
  %168 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %161, ptr noundef nonnull @.str.83, i32 noundef %167) #12
  %169 = getelementptr i8, ptr %161, i32 %168
  %170 = load ptr, ptr %11, align 4
  %171 = call zeroext i8 @sdio_readb(ptr noundef %170, i32 noundef 7, ptr noundef nonnull %4) #12
  %172 = load i32, ptr %4, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %116

174:                                              ; preds = %166
  %175 = zext i8 %171 to i32
  %176 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %169, ptr noundef nonnull @.str.83, i32 noundef %175) #12
  %177 = getelementptr i8, ptr %169, i32 %176
  %178 = load ptr, ptr %11, align 4
  %179 = call zeroext i8 @sdio_readb(ptr noundef %178, i32 noundef 8, ptr noundef nonnull %4) #12
  %180 = load i32, ptr %4, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %116

182:                                              ; preds = %174
  %183 = zext i8 %179 to i32
  %184 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %177, ptr noundef nonnull @.str.83, i32 noundef %183) #12
  %185 = getelementptr i8, ptr %177, i32 %184
  %186 = load ptr, ptr %11, align 4
  %187 = call zeroext i8 @sdio_readb(ptr noundef %186, i32 noundef 9, ptr noundef nonnull %4) #12
  %188 = load i32, ptr %4, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %116

190:                                              ; preds = %182
  %191 = zext i8 %187 to i32
  %192 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %185, ptr noundef nonnull @.str.83, i32 noundef %191) #12
  br label %193

193:                                              ; preds = %190, %116
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.85, ptr noundef nonnull %5) #12
  %194 = load ptr, ptr %11, align 4
  call void @sdio_release_host(ptr noundef %194) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %195 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %8, i32 0, i32 6
  %196 = load i8, ptr %195, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.65) #12
  br label %399

199:                                              ; preds = %205, %193
  %200 = phi i32 [ %207, %205 ], [ 0, %193 ]
  %201 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %200, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  call void @vfree(ptr noundef nonnull %202) #12
  store ptr null, ptr %201, align 4
  br label %205

205:                                              ; preds = %204, %199
  %206 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %200, i32 2
  store i32 0, ptr %206, align 4
  %207 = add nuw nsw i32 %200, 1
  %208 = icmp eq i32 %207, 15
  br i1 %208, label %209, label %199

209:                                              ; preds = %205
  %210 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %210, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %209
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #12
  br label %223

216:                                              ; preds = %212
  call void @sdio_claim_host(ptr noundef nonnull %213) #12
  %217 = load ptr, ptr %210, align 4
  %218 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %210, i32 0, i32 4
  %219 = load ptr, ptr %218, align 4
  %220 = load i8, ptr %219, align 1
  %221 = zext i8 %220 to i32
  call void @sdio_writeb(ptr noundef %217, i8 noundef zeroext 2, i32 noundef %221, ptr noundef nonnull %2) #12
  %222 = load ptr, ptr %210, align 4
  call void @sdio_release_host(ptr noundef %222) #12
  br label %223

223:                                              ; preds = %216, %215
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %224 = load ptr, ptr %8, align 4
  call void @sdio_claim_host(ptr noundef %224) #12
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.66) #12
  %225 = call fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr noundef %10, i8 noundef zeroext 0)
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %356, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %8, i32 0, i32 4
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %229, i32 0, i32 18
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = load ptr, ptr %8, align 4
  %234 = call zeroext i8 @sdio_readb(ptr noundef %233, i32 noundef %232, ptr noundef nonnull %6) #12
  %235 = load i32, ptr %6, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %227
  %238 = icmp eq i8 %234, 0
  br i1 %238, label %354, label %239

239:                                              ; preds = %237
  %240 = zext i8 %234 to i32
  br label %242

241:                                              ; preds = %227
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.67) #12
  br label %356

242:                                              ; preds = %347, %239
  %243 = phi i32 [ 0, %239 ], [ %352, %347 ]
  %244 = phi i32 [ 0, %239 ], [ %309, %347 ]
  %245 = phi i8 [ 0, %239 ], [ %312, %347 ]
  %246 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %243
  %247 = call fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr noundef %10, i8 noundef zeroext %245)
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %358, label %249

249:                                              ; preds = %242
  %250 = load ptr, ptr %228, align 4
  %251 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %250, i32 0, i32 18
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i32
  %254 = load ptr, ptr %8, align 4
  %255 = call zeroext i8 @sdio_readb(ptr noundef %254, i32 noundef %253, ptr noundef nonnull %6) #12
  %256 = load i32, ptr %6, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %271, %265, %259, %249
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.68) #12
  br label %358

259:                                              ; preds = %249
  %260 = add nuw nsw i32 %253, 1
  %261 = load ptr, ptr %8, align 4
  %262 = call zeroext i8 @sdio_readb(ptr noundef %261, i32 noundef %260, ptr noundef nonnull %6) #12
  %263 = load i32, ptr %6, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %258

265:                                              ; preds = %259
  %266 = add nuw nsw i32 %253, 2
  %267 = load ptr, ptr %8, align 4
  %268 = call zeroext i8 @sdio_readb(ptr noundef %267, i32 noundef %266, ptr noundef nonnull %6) #12
  %269 = load i32, ptr %6, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %258

271:                                              ; preds = %265
  %272 = add nuw nsw i32 %253, 3
  %273 = load ptr, ptr %8, align 4
  %274 = call zeroext i8 @sdio_readb(ptr noundef %273, i32 noundef %272, ptr noundef nonnull %6) #12
  %275 = load i32, ptr %6, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %258

277:                                              ; preds = %271
  %278 = zext i8 %268 to i32
  %279 = shl nuw nsw i32 %278, 16
  %280 = zext i8 %262 to i32
  %281 = shl nuw nsw i32 %280, 8
  %282 = zext i8 %255 to i32
  %283 = or i32 %281, %282
  %284 = or i32 %279, %283
  %285 = zext i8 %274 to i32
  %286 = shl nuw i32 %285, 24
  %287 = or i32 %286, %284
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %277
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.69) #12
  %290 = load ptr, ptr %8, align 4
  %291 = load ptr, ptr %228, align 4
  %292 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %291, i32 0, i32 17
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i32
  call void @sdio_writeb(ptr noundef %290, i8 noundef zeroext -2, i32 noundef %294, ptr noundef nonnull %6) #12
  %295 = load i32, ptr %6, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %354, label %297

297:                                              ; preds = %289
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.70) #12
  br label %358

298:                                              ; preds = %277
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.71, ptr noundef %246, i32 noundef %287) #12
  %299 = add i32 %287, 1
  %300 = call noalias ptr @vzalloc(i32 noundef %299) #15
  %301 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %243, i32 1
  store ptr %300, ptr %301, align 4
  %302 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %243, i32 2
  store i32 %287, ptr %302, align 4
  %303 = icmp eq ptr %300, null
  br i1 %303, label %304, label %305

304:                                              ; preds = %298
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.72, ptr noundef %246) #12
  br label %358

305:                                              ; preds = %298
  %306 = call i32 @strlen(ptr noundef %246)
  %307 = add i32 %244, 54
  %308 = add i32 %307, %299
  %309 = add i32 %308, %306
  %310 = getelementptr i8, ptr %300, i32 %287
  %311 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %243, i32 3
  %312 = load i8, ptr %311, align 4
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.73, ptr noundef %246) #12
  br label %313

313:                                              ; preds = %344, %305
  %314 = phi ptr [ %300, %305 ], [ %345, %344 ]
  %315 = call fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr noundef %10, i8 noundef zeroext %312)
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %358, label %317

317:                                              ; preds = %313
  %318 = load ptr, ptr %228, align 4
  %319 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %318, i32 0, i32 18
  %320 = load i8, ptr %319, align 1
  %321 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %318, i32 0, i32 19
  %322 = load i8, ptr %321, align 1
  %323 = icmp ugt i8 %320, %322
  br i1 %323, label %344, label %324

324:                                              ; preds = %317
  %325 = zext i8 %322 to i32
  %326 = zext i8 %320 to i32
  br label %327

327:                                              ; preds = %340, %324
  %328 = phi ptr [ %341, %340 ], [ %314, %324 ]
  %329 = phi i32 [ %342, %340 ], [ %326, %324 ]
  %330 = load ptr, ptr %8, align 4
  %331 = call zeroext i8 @sdio_readb(ptr noundef %330, i32 noundef %329, ptr noundef nonnull %6) #12
  store i8 %331, ptr %328, align 1
  %332 = load i32, ptr %6, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %327
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.68) #12
  br label %358

335:                                              ; preds = %327
  %336 = icmp ult ptr %328, %310
  br i1 %336, label %337, label %339

337:                                              ; preds = %335
  %338 = getelementptr i8, ptr %328, i32 1
  br label %340

339:                                              ; preds = %335
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.74) #12
  br label %340

340:                                              ; preds = %339, %337
  %341 = phi ptr [ %338, %337 ], [ %328, %339 ]
  %342 = add nuw nsw i32 %329, 1
  %343 = icmp eq i32 %329, %325
  br i1 %343, label %344, label %327

344:                                              ; preds = %340, %317
  %345 = phi ptr [ %314, %317 ], [ %341, %340 ]
  %346 = icmp eq i32 %315, 2
  br i1 %346, label %347, label %313

347:                                              ; preds = %344
  %348 = load ptr, ptr %301, align 4
  %349 = ptrtoint ptr %345 to i32
  %350 = ptrtoint ptr %348 to i32
  %351 = sub i32 %349, %350
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.75, ptr noundef %246, i32 noundef %351) #12
  %352 = add nuw nsw i32 %243, 1
  %353 = icmp eq i32 %352, %240
  br i1 %353, label %354, label %242

354:                                              ; preds = %347, %289, %237
  %355 = phi i32 [ %244, %289 ], [ 0, %237 ], [ %309, %347 ]
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.76) #12
  br label %358

356:                                              ; preds = %241, %223
  %357 = load ptr, ptr %8, align 4
  call void @sdio_release_host(ptr noundef %357) #12
  br label %399

358:                                              ; preds = %354, %334, %313, %304, %297, %258, %242
  %359 = phi i32 [ %355, %354 ], [ %244, %304 ], [ %309, %334 ], [ %244, %297 ], [ %244, %258 ], [ %309, %313 ], [ %244, %242 ]
  %360 = load ptr, ptr %8, align 4
  call void @sdio_release_host(ptr noundef %360) #12
  %361 = icmp eq i32 %359, 0
  br i1 %361, label %399, label %362

362:                                              ; preds = %358
  %363 = add i32 %359, 1
  %364 = call noalias ptr @vzalloc(i32 noundef %363) #15
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %367

366:                                              ; preds = %362
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.77) #12
  br label %399

367:                                              ; preds = %362
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.78) #12
  br i1 %238, label %396, label %368

368:                                              ; preds = %367
  %369 = zext i8 %234 to i32
  br label %370

370:                                              ; preds = %392, %368
  %371 = phi i32 [ 0, %368 ], [ %394, %392 ]
  %372 = phi i32 [ 0, %368 ], [ %393, %392 ]
  %373 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %371, i32 1
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, null
  br i1 %375, label %392, label %376

376:                                              ; preds = %370
  %377 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %371
  %378 = getelementptr i8, ptr %364, i32 %372
  %379 = sub i32 %363, %372
  %380 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %378, i32 noundef %379, ptr noundef nonnull @.str.79, ptr noundef %377) #12
  %381 = add i32 %380, %372
  %382 = getelementptr i8, ptr %364, i32 %381
  %383 = load ptr, ptr %373, align 4
  %384 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %371, i32 2
  %385 = load i32, ptr %384, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %382, ptr align 1 %383, i32 %385, i1 false)
  %386 = add i32 %385, %381
  %387 = getelementptr i8, ptr %364, i32 %386
  %388 = sub i32 %363, %386
  %389 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %387, i32 noundef %388, ptr noundef nonnull @.str.80) #12
  %390 = add i32 %389, %386
  %391 = load ptr, ptr %373, align 4
  call void @vfree(ptr noundef %391) #12
  store ptr null, ptr %373, align 4
  br label %392

392:                                              ; preds = %376, %370
  %393 = phi i32 [ %390, %376 ], [ %372, %370 ]
  %394 = add nuw nsw i32 %371, 1
  %395 = icmp eq i32 %394, %369
  br i1 %395, label %396, label %370

396:                                              ; preds = %392, %367
  %397 = load ptr, ptr %8, align 4
  %398 = getelementptr inbounds %struct.sdio_func, ptr %397, i32 0, i32 1
  call void @dev_coredumpv(ptr noundef %398, ptr noundef nonnull %364, i32 noundef %359, i32 noundef 3264) #12
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.81) #12
  br label %399

399:                                              ; preds = %396, %366, %358, %356, %198
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @btmrvl_sdio_disable_host_int(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  tail call void @sdio_claim_host(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = call zeroext i8 @sdio_readb(ptr noundef %8, i32 noundef %13, ptr noundef nonnull %2) #12
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = load ptr, ptr %0, align 4
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %19, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  call void @sdio_writeb(ptr noundef %18, i8 noundef zeroext 0, i32 noundef %22, ptr noundef nonnull %2) #12
  %23 = load i32, ptr %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24) #12
  br label %26

26:                                               ; preds = %25, %17, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %27 = load ptr, ptr %0, align 4
  call void @sdio_release_host(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btmrvl_add_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_host_to_card(ptr nocapture noundef %0, ptr noundef %1, i16 noundef zeroext %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #12
  br label %48

10:                                               ; preds = %6
  %11 = zext i16 %2 to i32
  %12 = add nuw nsw i32 %11, 63
  %13 = and i32 %12, 131008
  %14 = ptrtoint ptr %1 to i32
  %15 = and i32 %14, 7
  %16 = icmp ne i32 %15, 0
  %17 = icmp ugt i32 %13, %11
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = or i32 %13, 8
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %21, ptr align 1 %1, i32 %11, i1 false)
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi ptr [ %24, %23 ], [ %7, %10 ]
  %27 = phi ptr [ %21, %23 ], [ %1, %10 ]
  %28 = phi ptr [ %21, %23 ], [ null, %10 ]
  tail call void @sdio_claim_host(ptr noundef %26) #12
  %29 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %4, i32 0, i32 1
  br label %30

30:                                               ; preds = %39, %25
  %31 = phi i32 [ 0, %25 ], [ %41, %39 ]
  %32 = load ptr, ptr %4, align 4
  %33 = load i32, ptr %29, align 4
  %34 = tail call i32 @sdio_writesb(ptr noundef %32, i32 noundef %33, ptr noundef %27, i32 noundef %13) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = add i32 %31, 1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.53, i32 noundef %37, i32 noundef %34) #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.54, i32 noundef %11, ptr noundef %1) #12
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %30
  %40 = phi i32 [ -5, %36 ], [ %34, %30 ]
  %41 = phi i32 [ %37, %36 ], [ %31, %30 ]
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %30

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 3
  store i8 0, ptr %44, align 1
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i32 [ 0, %43 ], [ -5, %36 ]
  %47 = load ptr, ptr %4, align 4
  tail call void @sdio_release_host(ptr noundef %47) #12
  tail call void @kfree(ptr noundef %28) #12
  br label %48

48:                                               ; preds = %45, %19, %9
  %49 = phi i32 [ %46, %45 ], [ -22, %9 ], [ -12, %19 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_wakeup_fw(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #12
  br label %17

9:                                                ; preds = %5
  tail call void @sdio_claim_host(ptr noundef nonnull %6) #12
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %3, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  call void @sdio_writeb(ptr noundef %10, i8 noundef zeroext 2, i32 noundef %14, ptr noundef nonnull %2) #12
  %15 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %15) #12
  %16 = load i32, ptr %2, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = phi i32 [ %16, %9 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_process_int_status(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 6
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = load i8, ptr @sdio_ireg, align 1
  store i8 0, ptr @sdio_ireg, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  %7 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %7) #12
  %8 = zext i8 %6 to i32
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8 1, ptr %12, align 1
  br label %16

16:                                               ; preds = %15, %11, %1
  %17 = and i32 %8, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %135, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %22, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #12
  br label %130

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %22, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %31, i32 0, i32 9
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call zeroext i8 @sdio_readb(ptr noundef %29, i32 noundef %34, ptr noundef nonnull %2) #12
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %39 = icmp slt i32 %36, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.55) #12
  br label %130

41:                                               ; preds = %28
  %42 = zext i8 %35 to i32
  %43 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %22, i32 0, i32 8
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = shl i32 %42, %45
  %47 = trunc i32 %46 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %48 = icmp ult i16 %47, 5
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = and i32 %46, 65535
  %51 = add nuw nsw i32 %50, 63
  %52 = and i32 %51, 131008
  %53 = icmp ugt i32 %52, 2112
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %41, %38
  %55 = phi i32 [ %46, %49 ], [ %46, %41 ], [ 0, %38 ]
  %56 = and i32 %55, 65535
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.56, i32 noundef %56) #12
  br label %130

57:                                               ; preds = %49
  %58 = or i32 %52, 16
  %59 = call ptr @__alloc_skb(i32 noundef %58, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.57) #12
  br label %130

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 17
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  store ptr %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 14
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr i8, ptr %67, i32 8
  store ptr %68, ptr %66, align 8
  %69 = ptrtoint ptr %65 to i32
  %70 = and i32 %69, 7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = call ptr @skb_put(ptr noundef nonnull %59, i32 noundef %70) #12
  %74 = load ptr, ptr %63, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = and i32 %75, 7
  %77 = call ptr @skb_pull(ptr noundef nonnull %59, i32 noundef %76) #12
  %78 = load ptr, ptr %63, align 4
  br label %79

79:                                               ; preds = %72, %62
  %80 = phi ptr [ %78, %72 ], [ %65, %62 ]
  %81 = load ptr, ptr %22, align 4
  %82 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %22, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @sdio_readsb(ptr noundef %81, ptr noundef %80, i32 noundef %83, i32 noundef %52) #12
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.58, i32 noundef %84) #12
  br label %130

87:                                               ; preds = %79
  %88 = load i8, ptr %80, align 1
  %89 = getelementptr i8, ptr %80, i32 1
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = zext i8 %88 to i32
  %94 = or i32 %92, %93
  %95 = icmp ult i32 %52, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, i32 noundef %94, i32 noundef %52) #12
  br label %130

97:                                               ; preds = %87
  %98 = getelementptr i8, ptr %80, i32 3
  %99 = load i8, ptr %98, align 1
  switch i8 %99, label %125 [
    i8 2, label %100
    i8 3, label %100
    i8 4, label %100
    i8 -2, label %113
  ]

100:                                              ; preds = %97, %97, %97
  %101 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3
  store i8 %99, ptr %101, align 8
  %102 = call ptr @skb_put(ptr noundef nonnull %59, i32 noundef %94) #12
  %103 = call ptr @skb_pull(ptr noundef nonnull %59, i32 noundef 4) #12
  %104 = icmp eq i8 %99, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call zeroext i1 @btmrvl_check_evtpkt(ptr noundef %0, ptr noundef nonnull %59) #12
  br i1 %106, label %107, label %109

107:                                              ; preds = %105, %100
  %108 = call i32 @hci_recv_frame(ptr noundef %21, ptr noundef nonnull %59) #12
  br label %109

109:                                              ; preds = %107, %105
  %110 = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 199, i32 8
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, %94
  store i32 %112, ptr %110, align 4
  br label %127

113:                                              ; preds = %97
  %114 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3
  store i8 -1, ptr %114, align 8
  %115 = call ptr @skb_put(ptr noundef nonnull %59, i32 noundef %94) #12
  %116 = call ptr @skb_pull(ptr noundef nonnull %59, i32 noundef 4) #12
  %117 = call i32 @btmrvl_process_event(ptr noundef %0, ptr noundef nonnull %59) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = call i32 @hci_recv_frame(ptr noundef %21, ptr noundef nonnull %59) #12
  br label %121

121:                                              ; preds = %119, %113
  %122 = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 199, i32 8
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, %94
  store i32 %124, ptr %122, align 4
  br label %127

125:                                              ; preds = %97
  %126 = zext i8 %99 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.60, i32 noundef %126) #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.54, i32 noundef %52, ptr noundef %80) #12
  call void @kfree_skb_reason(ptr noundef nonnull %59, i32 noundef 0) #12
  br label %127

127:                                              ; preds = %125, %121, %109
  %128 = phi ptr [ null, %125 ], [ %59, %121 ], [ %59, %109 ]
  %129 = icmp eq i32 %84, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127, %96, %86, %61, %54, %40, %27
  %131 = phi ptr [ %128, %127 ], [ null, %27 ], [ null, %61 ], [ %59, %96 ], [ %59, %86 ], [ null, %54 ], [ null, %40 ]
  %132 = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 199
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  call void @kfree_skb_reason(ptr noundef %131, i32 noundef 0) #12
  br label %135

135:                                              ; preds = %130, %127, %16
  %136 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %136) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_register_hdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @btmrvl_sdio_interrupt(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %4, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %0, ptr noundef %4) #12
  br label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.btmrvl_private, ptr %8, i32 0, i32 8
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %4, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %17, i32 0, i32 14
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.btmrvl_private, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.btmrvl_adapter, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @sdio_readsb(ptr noundef %24, ptr noundef %26, i32 noundef 0, i32 noundef 64) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, i32 noundef %27) #12
  br label %70

30:                                               ; preds = %21
  %31 = load ptr, ptr %25, align 4
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr i8, ptr %31, i32 %35
  %37 = load i8, ptr %36, align 1
  br label %64

38:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %17, i32 0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = call zeroext i8 @sdio_readb(ptr noundef %39, i32 noundef %42, ptr noundef nonnull %2) #12
  %44 = load i32, ptr %2, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, i32 noundef %44) #12
  br label %61

47:                                               ; preds = %38
  %48 = icmp eq i8 %43, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %4, align 4
  %51 = and i8 %43, 3
  %52 = xor i8 %51, 3
  %53 = load ptr, ptr %16, align 4
  %54 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  call void @sdio_writeb(ptr noundef %50, i8 noundef zeroext %52, i32 noundef %56, ptr noundef nonnull %2) #12
  %57 = load i32, ptr %2, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, i32 noundef %57) #12
  br label %61

60:                                               ; preds = %49, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %64

61:                                               ; preds = %59, %46
  %62 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61, %60, %30
  %65 = phi i8 [ %37, %30 ], [ %43, %61 ], [ %43, %60 ]
  %66 = getelementptr inbounds %struct.btmrvl_private, ptr %8, i32 0, i32 6
  %67 = call i32 @_raw_spin_lock_irqsave(ptr noundef %66) #12
  %68 = load i8, ptr @sdio_ireg, align 1
  %69 = or i8 %68, %65
  store i8 %69, ptr @sdio_ireg, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %66, i32 noundef %67) #12
  call void @btmrvl_interrupt(ptr noundef nonnull %8) #12
  br label %70

70:                                               ; preds = %64, %61, %29, %11, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @btmrvl_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_verify_fw_download(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %37, %5
  %8 = phi i32 [ 0, %5 ], [ %38, %37 ]
  %9 = load ptr, ptr %0, align 4
  call void @sdio_claim_host(ptr noundef %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %11, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = call zeroext i8 @sdio_readb(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %3) #12
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load ptr, ptr %0, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %20, i32 0, i32 8
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = call zeroext i8 @sdio_readb(ptr noundef %19, i32 noundef %23, ptr noundef nonnull %3) #12
  %25 = load i32, ptr %3, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %28 = load ptr, ptr %0, align 4
  call void @sdio_release_host(ptr noundef %28) #12
  br label %37

29:                                               ; preds = %18
  %30 = zext i8 %24 to i16
  %31 = shl nuw i16 %30, 8
  %32 = zext i8 %15 to i16
  %33 = or i16 %31, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %34 = load ptr, ptr %0, align 4
  call void @sdio_release_host(ptr noundef %34) #12
  %35 = icmp eq i16 %33, -292
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  call void @msleep(i32 noundef 100) #12
  br label %37

37:                                               ; preds = %36, %27
  %38 = add nuw nsw i32 %8, 1
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %7

40:                                               ; preds = %37, %29, %2
  %41 = phi i32 [ -110, %2 ], [ -110, %37 ], [ 0, %29 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_wake_irq_bt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.52) #14
  %7 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, ptr %6, i32 0, i32 1
  store i8 1, ptr %7, align 4
  tail call void @disable_irq_nosync(i32 noundef %0) #12
  tail call void @pm_wakeup_dev_event(ptr noundef %4, i32 noundef 0, i1 noundef zeroext false) #12
  tail call void @pm_system_wakeup() #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btmrvl_check_evtpkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_process_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_send_module_cfg_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @sdio_get_host_pm_caps(ptr noundef nonnull %2) #12
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %10, %8 ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.61, ptr noundef %15) #12
  br label %100

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %18, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.62) #12
  br label %100

25:                                               ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.63) #12
  br label %100

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %18, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, ptr %28, i32 0, i32 1
  store i8 0, ptr %43, align 4
  %44 = load ptr, ptr %27, align 4
  %45 = load i32, ptr %44, align 4
  tail call void @enable_irq(i32 noundef %45) #12
  %46 = load ptr, ptr %27, align 4
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @irq_set_irq_wake(i32 noundef %47, i32 noundef 1) #12
  %49 = load ptr, ptr %21, align 4
  br label %50

50:                                               ; preds = %42, %38, %33, %30, %26
  %51 = phi ptr [ %22, %33 ], [ %49, %42 ], [ %22, %38 ], [ %22, %30 ], [ %22, %26 ]
  %52 = getelementptr inbounds %struct.btmrvl_private, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.btmrvl_adapter, ptr %53, i32 0, i32 12
  store i8 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.btmrvl_device, ptr %51, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @hci_suspend_dev(ptr noundef %56) #12
  %58 = load ptr, ptr %52, align 4
  %59 = getelementptr inbounds %struct.btmrvl_adapter, ptr %58, i32 0, i32 6
  %60 = load i8, ptr %59, align 2
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %89, label %62

62:                                               ; preds = %50
  %63 = tail call i32 @btmrvl_enable_hs(ptr noundef %51) #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load ptr, ptr %52, align 4
  br label %89

67:                                               ; preds = %62
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.64) #12
  %68 = load ptr, ptr %27, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %68, align 4
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %75 = load i16, ptr %74, align 4
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @irq_set_irq_wake(i32 noundef %71, i32 noundef 0) #12
  %84 = load ptr, ptr %27, align 4
  %85 = load i32, ptr %84, align 4
  tail call void @disable_irq(i32 noundef %85) #12
  br label %86

86:                                               ; preds = %82, %78, %73, %70, %67
  %87 = load ptr, ptr %52, align 4
  %88 = getelementptr inbounds %struct.btmrvl_adapter, ptr %87, i32 0, i32 12
  store i8 0, ptr %88, align 2
  br label %100

89:                                               ; preds = %65, %50
  %90 = phi ptr [ %66, %65 ], [ %58, %50 ]
  %91 = getelementptr inbounds %struct.btmrvl_adapter, ptr %90, i32 0, i32 12
  store i8 0, ptr %91, align 2
  %92 = load ptr, ptr %52, align 4
  %93 = getelementptr inbounds %struct.btmrvl_adapter, ptr %92, i32 0, i32 11
  store i8 1, ptr %93, align 1
  %94 = load ptr, ptr %52, align 4
  %95 = getelementptr inbounds %struct.btmrvl_adapter, ptr %94, i32 0, i32 6
  %96 = load i8, ptr %95, align 2
  %97 = icmp eq i8 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = tail call i32 @sdio_set_host_pm_flags(ptr noundef nonnull %2, i32 noundef 1) #12
  br label %100

100:                                              ; preds = %98, %89, %86, %25, %24, %14
  %101 = phi i32 [ -16, %86 ], [ %99, %98 ], [ 0, %24 ], [ -38, %14 ], [ 0, %25 ], [ 0, %89 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @sdio_get_host_pm_caps(ptr noundef nonnull %2) #12
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %7, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.62) #12
  br label %57

14:                                               ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.63) #12
  br label %57

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.btmrvl_private, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.btmrvl_adapter, ptr %17, i32 0, i32 11
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.btmrvl_private, ptr %11, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef nonnull %11) #12
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.btmrvl_adapter, ptr %25, i32 0, i32 6
  store i8 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.btmrvl_device, ptr %11, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.btmrvl_adapter, ptr %29, i32 0, i32 11
  store i8 0, ptr %30, align 1
  %31 = tail call i32 @hci_resume_dev(ptr noundef %28) #12
  %32 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %7, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %21
  %36 = load i32, ptr %33, align 4
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @irq_set_irq_wake(i32 noundef %36, i32 noundef 0) #12
  %49 = load ptr, ptr %32, align 4
  %50 = load i32, ptr %49, align 4
  tail call void @disable_irq(i32 noundef %50) #12
  %51 = load ptr, ptr %32, align 4
  %52 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, ptr %51, i32 0, i32 1
  %53 = load i8, ptr %52, align 4, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = load i32, ptr %51, align 4
  tail call void @enable_irq(i32 noundef %56) #12
  br label %57

57:                                               ; preds = %55, %47, %43, %38, %35, %21, %15, %14, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_suspend_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_resume_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %7, i32 0, i32 17
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext -18, i32 noundef %10, ptr noundef nonnull %3) #12
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = icmp ne i8 %1, 0
  %15 = load ptr, ptr %4, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %16, i32 0, i32 17
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = call zeroext i8 @sdio_readb(ptr noundef %15, i32 noundef %19, ptr noundef nonnull %3) #12
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %43, %13
  %24 = phi i8 [ %50, %43 ], [ %20, %13 ]
  %25 = phi i32 [ %44, %43 ], [ 0, %13 ]
  %26 = icmp eq i8 %24, -1
  br i1 %26, label %58, label %27

27:                                               ; preds = %23
  %28 = icmp eq i8 %24, %1
  %29 = select i1 %14, i1 %28, i1 false
  br i1 %29, label %58, label %30

30:                                               ; preds = %27
  %31 = icmp eq i8 %24, -18
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.87) #12
  %33 = load ptr, ptr %4, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %34, i32 0, i32 17
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  call void @sdio_writeb(ptr noundef %33, i8 noundef zeroext -18, i32 noundef %37, ptr noundef nonnull %3) #12
  %38 = load i32, ptr %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %56

40:                                               ; preds = %30
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %41 = add nuw nsw i32 %25, 1
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %56, label %43

43:                                               ; preds = %53, %40
  %44 = phi i32 [ %41, %40 ], [ %54, %53 ]
  %45 = load ptr, ptr %4, align 4
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %46, i32 0, i32 17
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call zeroext i8 @sdio_readb(ptr noundef %45, i32 noundef %49, ptr noundef nonnull %3) #12
  %51 = load i32, ptr %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %23, label %56

53:                                               ; preds = %32
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %54 = add nuw nsw i32 %25, 1
  %55 = icmp eq i32 %54, 100
  br i1 %55, label %58, label %43

56:                                               ; preds = %43, %40, %32, %13, %2
  %57 = phi ptr [ @.str.86, %2 ], [ @.str.68, %13 ], [ @.str.88, %40 ], [ @.str.86, %32 ], [ @.str.68, %43 ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull %57) #12
  br label %58

58:                                               ; preds = %56, %53, %27, %23
  %59 = phi i32 [ 1, %56 ], [ 0, %53 ], [ 0, %23 ], [ 2, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
