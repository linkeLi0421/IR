; ModuleID = '/llk/IR/drivers/hid/hid-quirks.c_pt.bc'
source_filename = "../drivers/hid/hid-quirks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_ignore\22\09\09\09\09\09"
module asm "__kstrtabns_hid_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_quirks_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_quirks_init\22\09\09\09\09\09"
module asm "__kstrtabns_hid_quirks_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_quirks_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_quirks_exit\22\09\09\09\09\09"
module asm "__kstrtabns_hid_quirks_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_lookup_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_lookup_quirk\22\09\09\09\09\09"
module asm "__kstrtabns_hid_lookup_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.quirks_list_struct = type { %struct.hid_device_id, %struct.list_head }

@.str = private unnamed_addr constant [27 x i8] c"HOLTEK  B-LINK USB Audio  \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"www.masterkit.ru MA901\00", align 1
@elan_acpi_id = internal constant [53 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ELAN0000\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0100\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0600\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0601\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0602\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0603\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0604\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0605\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0606\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0607\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0608\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0609\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060B\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060C\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060F\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0610\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0611\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0612\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0615\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0616\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0617\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0618\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0619\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061C\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061D\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061E\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061F\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0620\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0621\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0622\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0623\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0624\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0625\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0626\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0627\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0628\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0629\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062B\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062C\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062D\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062E\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062F\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0631\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0632\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0633\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0634\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0635\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0636\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0637\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN1000\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@hid_mouse_ignore_list = internal constant [56 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i32 0 }, %struct.hid_device_id zeroinitializer], align 4
@hid_ignore_list = internal constant [154 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1120, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1120, i32 8, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1761, i32 41301, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 16, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 32, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 33, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 34, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 35, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 36, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5834, i32 5378, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1423, i32 38688, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5926, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5979, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1994, i32 47104, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4815, i32 28945, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3224, i32 4416, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5751, i32 259, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33162, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33348, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3468, i32 14, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 21760, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 29719, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4293, i32 33178, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 512, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3455, i32 256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 777, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 774, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 127, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 206, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 244, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2417, i32 8197, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1040, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1194, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 25210, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 144, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 257, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 259, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 260, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 261, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 262, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 263, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 264, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 512, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 513, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 514, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 515, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 516, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 517, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 518, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 519, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 768, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 769, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 770, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 771, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 772, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 773, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 774, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 775, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 776, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 777, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1024, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1025, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1026, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1027, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1028, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1029, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1280, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1281, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1282, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1283, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1284, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4096, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4097, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4098, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4099, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4100, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4101, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4102, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4103, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1816, i32 53248, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2830, i32 37712, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2126, i32 4097, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7040, i32 55040, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20483, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1112, i32 88, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4096, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4097, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4112, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4113, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4128, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4129, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4145, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4146, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4147, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4149, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4152, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4160, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4162, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4163, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4224, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4225, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4240, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4272, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4352, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4353, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4608, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4624, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8192, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8208, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8224, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8240, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8272, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8273, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8288, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8304, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8320, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8336, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8352, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 17728, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 118, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 122, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 50, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 51, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 66, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 62199, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1024, i32 50009, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 100, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 120, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 130, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 200, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 208, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 218, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 300, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 400, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 500, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 600, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8482, i32 4660, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1137, i32 1559, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3487, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6109, i32 21760, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 27027, i32 45057, i32 0 }, %struct.hid_device_id zeroinitializer], align 4
@__kstrtab_hid_ignore = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_ignore = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_ignore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_ignore to i32), ptr @__kstrtab_hid_ignore, ptr @__kstrtabns_hid_ignore }, section "___ksymtab_gpl+hid_ignore", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"0x%hx:0x%hx:0x%x\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\014Could not parse HID quirk module param %s\0A\00", align 1
@__kstrtab_hid_quirks_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_quirks_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_quirks_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_quirks_init to i32), ptr @__kstrtab_hid_quirks_init, ptr @__kstrtabns_hid_quirks_init }, section "___ksymtab_gpl+hid_quirks_init", align 4
@__kstrtab_hid_quirks_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_quirks_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_quirks_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_quirks_exit to i32), ptr @__kstrtab_hid_quirks_exit, ptr @__kstrtabns_hid_quirks_exit }, section "___ksymtab_gpl+hid_quirks_exit", align 4
@dquirks_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dquirks_lock, i64 12), ptr getelementptr (i8, ptr @dquirks_lock, i64 12) } }, align 4
@__kstrtab_hid_lookup_quirk = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_lookup_quirk = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_lookup_quirk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_lookup_quirk to i32), ptr @__kstrtab_hid_lookup_quirk, ptr @__kstrtabns_hid_lookup_quirk }, section "___ksymtab_gpl+hid_lookup_quirk", align 4
@dquirks_list = internal global %struct.list_head { ptr @dquirks_list, ptr @dquirks_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"\017%s: Found dynamic quirk 0x%lx for HID device 0x%04x:0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"drivers/hid/hid-quirks.c\00", align 1
@hid_have_special_driver = internal constant [1 x %struct.hid_device_id] zeroinitializer, align 4
@hid_quirks = internal constant [169 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1750, i32 37, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1750, i32 38, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 5540, i32 36886, i32 268435456 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 2, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 2536, i32 49, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 8209, i32 1813, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1075, i32 4353, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1131, i32 65296, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8708, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8712, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8709, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8706, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8736, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8723, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 32801, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8196, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 45469, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4179, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 2361, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1560, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1534, i32 20, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 211, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 28, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 244, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 243, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 81, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 255, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 242, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 241, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6935, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6969, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6931, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6968, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6921, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6929, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6930, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6964, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6974, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6933, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 1054, i32 12844, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 16700, i32 12314, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 3083, i32 24491, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 2, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 3, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6147, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6211, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6214, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6145, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6144, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3823, i32 1, i32 72 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 -1, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1255, i32 32, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 8198, i32 280, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 10600, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 6, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5242, i32 57406, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5538, i32 79, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1351, i32 28672, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12304, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12307, i32 64 }, %struct.hid_device_id { i16 5, i16 0, i32 10232, i32 3006, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 10232, i32 3007, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 16, i32 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 48, i32 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 32, i32 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41110, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41619, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2634, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2890, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 4938, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2378, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2369, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 1601, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 8010, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 7350, i32 26240, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 4754, i32 18245, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20499, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20497, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20506, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20501, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20505, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 311, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24590, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24717, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24601, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24622, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24723, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49159, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49271, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49741, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49178, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49242, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49258, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 5840, i32 3020, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 203, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2014, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1945, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1959, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1961, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 33410, i32 12801, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 6000, i32 65280, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6017, i32 2717, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 2231, i32 1, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1854, i32 769, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 6256, i32 272, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6438, i32 3, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1539, i32 5634, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 5376, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 1, i32 65600 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5648, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5696, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1523, i32 255, i32 128 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32770, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32771, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32769, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 9488, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19746, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19727, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19813, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 20002, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1455, i32 12386, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12289, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12291, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12296, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 3034, i32 338, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 3, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 241, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 65303, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1884, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 597, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1890, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 2922, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 39, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 35, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5013, i32 44, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 7247, i32 2, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1647, i32 14208, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4144, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 2071, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 37376, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4115, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1072, i32 52651, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 2048, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 4864, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2755, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2808, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 7440, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 6851, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 22288, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 10265, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 28193, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1635, i32 259, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 7165, i32 5768, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34946, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34947, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1578, i32 513, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 24577, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 100, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8569, i32 4, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1281, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1280, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1282, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 26231, i32 34818, i32 72 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34816, i32 72 }, %struct.hid_device_id { i16 3, i16 0, i32 5824, i32 1505, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 2178, i32 8 }, %struct.hid_device_id zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"\017%s: Found squirk 0x%lx for HID device 0x%04x:0x%04x\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_hid_ignore, ptr @__ksymtab_hid_lookup_quirk, ptr @__ksymtab_hid_quirks_exit, ptr @__ksymtab_hid_quirks_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hid_ignore(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %97

6:                                                ; preds = %1
  %7 = and i32 %3, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %97

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %87 [
    i32 1984, label %12
    i32 1133, label %17
    i32 5570, label %28
    i32 2903, label %33
    i32 3141, label %38
    i32 4303, label %46
    i32 5824, label %54
    i32 1267, label %66
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -256
  %16 = icmp eq i32 %15, 5376
  br i1 %16, label %97, label %87

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, -49424
  %21 = icmp ult i32 %20, 64
  br i1 %21, label %97, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %19, 2574
  br i1 %23, label %24, label %87

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 30
  %26 = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(27) @.str)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %97, label %87

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, -52
  %32 = icmp ult i32 %31, 19
  br i1 %32, label %97, label %87

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, -20480
  %37 = icmp ult i32 %36, 16384
  br i1 %37, label %97, label %87

38:                                               ; preds = %9
  %39 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 4112
  br i1 %41, label %42, label %87

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 13
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %97, label %87

46:                                               ; preds = %9
  %47 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, -4
  %50 = icmp eq i32 %49, 21760
  %51 = add i32 %48, -32865
  %52 = icmp ult i32 %51, 8
  %53 = or i1 %50, %52
  br i1 %53, label %97, label %87

54:                                               ; preds = %9
  %55 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 1503
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %60 = load i16, ptr %59, align 8
  %61 = icmp eq i16 %60, 3
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 30
  %64 = tail call i32 @strncmp(ptr noundef %63, ptr noundef nonnull dereferenceable(23) @.str.1, i32 noundef 22)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %87

66:                                               ; preds = %9
  %67 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, -2
  %70 = icmp eq i32 %69, 1024
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = tail call i32 @strlen(ptr noundef nonnull @elan_acpi_id)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 30
  br label %81

76:                                               ; preds = %81
  %77 = add i32 %84, 1
  %78 = getelementptr [53 x %struct.acpi_device_id], ptr @elan_acpi_id, i32 0, i32 %77
  %79 = tail call i32 @strlen(ptr noundef %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76, %74
  %82 = phi i32 [ %72, %74 ], [ %79, %76 ]
  %83 = phi ptr [ @elan_acpi_id, %74 ], [ %78, %76 ]
  %84 = phi i32 [ 0, %74 ], [ %77, %76 ]
  %85 = tail call i32 @strncmp(ptr noundef %75, ptr noundef %83, i32 noundef %82)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %76

87:                                               ; preds = %76, %71, %66, %62, %58, %54, %46, %42, %38, %33, %28, %24, %22, %12, %9
  %88 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 13
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = tail call ptr @hid_match_id(ptr noundef %0, ptr noundef nonnull @hid_mouse_ignore_list) #7
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91, %87
  %95 = tail call ptr @hid_match_id(ptr noundef %0, ptr noundef nonnull @hid_ignore_list) #7
  %96 = icmp ne ptr %95, null
  br label %97

97:                                               ; preds = %94, %91, %81, %62, %46, %42, %33, %28, %24, %17, %12, %6, %1
  %98 = phi i1 [ %96, %94 ], [ false, %1 ], [ true, %6 ], [ true, %12 ], [ true, %17 ], [ true, %24 ], [ true, %28 ], [ true, %33 ], [ true, %42 ], [ true, %46 ], [ true, %62 ], [ true, %91 ], [ true, %81 ]
  ret i1 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_match_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_quirks_init(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %64

8:                                                ; preds = %61, %3
  %9 = phi i32 [ %62, %61 ], [ 0, %3 ]
  %10 = getelementptr ptr, ptr %0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %8
  %14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %15 = load i16, ptr %4, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, ptr %5, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %14, 3
  br i1 %19, label %20, label %58

20:                                               ; preds = %13
  %21 = load i32, ptr %6, align 4
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 4056) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 24) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  store i16 %1, ptr %27, align 8
  %30 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 8
  store i16 %1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.hid_device_id, ptr %27, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 9
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.hid_device_id, ptr %27, i32 0, i32 2
  store i32 %16, ptr %33, align 4
  %34 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 10
  store i32 %16, ptr %34, align 4
  %35 = getelementptr inbounds %struct.hid_device_id, ptr %27, i32 0, i32 3
  store i32 %18, ptr %35, align 8
  %36 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 11
  store i32 %18, ptr %36, align 8
  %37 = getelementptr inbounds %struct.hid_device_id, ptr %27, i32 0, i32 4
  store i32 %21, ptr %37, align 4
  call void @mutex_lock(ptr noundef nonnull @dquirks_lock) #7
  br label %38

38:                                               ; preds = %42, %29
  %39 = phi ptr [ @dquirks_list, %29 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, @dquirks_list
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %40, i32 -16
  %44 = call zeroext i1 @hid_match_one_id(ptr noundef nonnull %23, ptr noundef %43) #7
  br i1 %44, label %45, label %38

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.quirks_list_struct, ptr %27, i32 0, i32 1
  %47 = load ptr, ptr %40, align 4
  store ptr %47, ptr %46, align 8
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.quirks_list_struct, ptr %27, i32 0, i32 1, i32 1
  store ptr %50, ptr %51, align 4
  store ptr %46, ptr %50, align 4
  call void @kfree(ptr noundef %43) #7
  br label %56

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.quirks_list_struct, ptr %27, i32 0, i32 1
  %54 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dquirks_list, i32 0, i32 1), align 4
  store ptr %53, ptr getelementptr inbounds (%struct.list_head, ptr @dquirks_list, i32 0, i32 1), align 4
  store ptr @dquirks_list, ptr %53, align 8
  %55 = getelementptr inbounds %struct.quirks_list_struct, ptr %27, i32 0, i32 1, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %53, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %45
  call void @mutex_unlock(ptr noundef nonnull @dquirks_lock) #7
  call void @kfree(ptr noundef nonnull %23) #7
  br label %61

57:                                               ; preds = %25
  call void @kfree(ptr noundef nonnull %23) #7
  br label %58

58:                                               ; preds = %57, %20, %13
  %59 = load ptr, ptr %10, align 4
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %59) #9
  br label %61

61:                                               ; preds = %58, %56
  %62 = add nuw nsw i32 %9, 1
  %63 = icmp eq i32 %62, %2
  br i1 %63, label %64, label %8

64:                                               ; preds = %61, %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_quirks_exit(i16 noundef zeroext %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dquirks_lock) #7
  %2 = load ptr, ptr @dquirks_list, align 4
  %3 = icmp eq ptr %2, @dquirks_list
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = icmp eq i16 %0, -1
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi ptr [ %2, %4 ], [ %9, %17 ]
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = load ptr, ptr %7, align 4
  br i1 %5, label %13, label %10

10:                                               ; preds = %6
  %11 = load i16, ptr %8, align 4
  %12 = icmp eq i16 %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %9, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef %8) #7
  br label %17

17:                                               ; preds = %13, %10
  %18 = icmp eq ptr %9, @dquirks_list
  br i1 %18, label %19, label %6

19:                                               ; preds = %17, %1
  tail call void @mutex_unlock(ptr noundef nonnull @dquirks_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_lookup_quirk(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 8
  %4 = icmp eq i16 %3, 3
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %24 [
    i32 1028, label %8
    i32 2830, label %13
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, -256
  %12 = icmp eq i32 %11, 768
  br i1 %12, label %78, label %24

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %24 [
    i32 1042, label %16
    i32 1056, label %20
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 273
  br i1 %19, label %78, label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 532
  br i1 %23, label %78, label %24

24:                                               ; preds = %20, %16, %13, %8, %5, %1
  tail call void @mutex_lock(ptr noundef nonnull @dquirks_lock) #7
  br label %25

25:                                               ; preds = %29, %24
  %26 = phi ptr [ @dquirks_list, %24 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @dquirks_list
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -16
  %31 = tail call zeroext i1 @hid_match_one_id(ptr noundef %0, ptr noundef %30) #7
  br i1 %31, label %32, label %25

32:                                               ; preds = %29
  %33 = icmp ne ptr %30, null
  %34 = load i32, ptr @hid_debug, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %27, i32 -4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %27, i32 -12
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %27, i32 -8
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %39, i32 noundef %41, i32 noundef %43) #9
  br label %47

45:                                               ; preds = %32
  %46 = icmp eq ptr %30, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr i8, ptr %27, i32 -4
  %49 = load i32, ptr %48, align 4
  br label %76

50:                                               ; preds = %45, %25
  %51 = tail call ptr @hid_match_id(ptr noundef %0, ptr noundef nonnull @hid_ignore_list) #7
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, i32 0, i32 4
  %54 = tail call ptr @hid_match_id(ptr noundef %0, ptr noundef nonnull @hid_have_special_driver) #7
  %55 = icmp eq ptr %54, null
  %56 = or i32 %53, 524288
  %57 = select i1 %55, i32 %53, i32 %56
  %58 = tail call ptr @hid_match_id(ptr noundef %0, ptr noundef nonnull @hid_quirks) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.hid_device_id, ptr %58, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, %57
  br label %64

64:                                               ; preds = %60, %50
  %65 = phi i32 [ %63, %60 ], [ %57, %50 ]
  %66 = icmp ne i32 %65, 0
  %67 = load i32, ptr @hid_debug, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %74 = load i32, ptr %73, align 8
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %65, i32 noundef %72, i32 noundef %74) #9
  br label %76

76:                                               ; preds = %70, %64, %47
  %77 = phi i32 [ %49, %47 ], [ %65, %64 ], [ %65, %70 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dquirks_lock) #7
  br label %78

78:                                               ; preds = %76, %20, %16, %8
  %79 = phi i32 [ %77, %76 ], [ 536870912, %8 ], [ 4, %16 ], [ 4, %20 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_match_one_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{!"auto-init"}
