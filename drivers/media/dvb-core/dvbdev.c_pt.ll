; ModuleID = '/llk/IR/drivers/media/dvb-core/dvbdev.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvbdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_generic_open:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_generic_open\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_generic_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_generic_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_generic_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_generic_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_generic_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_generic_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_generic_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_free_device\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_register_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_register_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_register_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_unregister_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_unregister_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_unregister_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_module_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_module_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_module_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_module_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_module_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_module_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }

@__param_str_dvbdev_debug = internal constant [13 x i8] c"dvbdev_debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvbdev_debug = internal global i32 0, align 4
@__param_dvbdev_debug = internal constant %struct.kernel_param { ptr @__param_str_dvbdev_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @dvbdev_debug } }, section "__param", align 4
@__UNIQUE_ID_dvbdev_debugtype251 = internal constant [26 x i8] c"parmtype=dvbdev_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvbdev_debug252 = internal constant [62 x i8] c"parm=dvbdev_debug:Turn on/off device debugging (default:off).\00", section ".modinfo", align 1
@__kstrtab_dvb_generic_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_generic_open = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_generic_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_generic_open to i32), ptr @__kstrtab_dvb_generic_open, ptr @__kstrtabns_dvb_generic_open }, section "___ksymtab+dvb_generic_open", align 4
@__kstrtab_dvb_generic_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_generic_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_generic_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_generic_release to i32), ptr @__kstrtab_dvb_generic_release, ptr @__kstrtabns_dvb_generic_release }, section "___ksymtab+dvb_generic_release", align 4
@__kstrtab_dvb_generic_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_generic_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_generic_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_generic_ioctl to i32), ptr @__kstrtab_dvb_generic_ioctl, ptr @__kstrtabns_dvb_generic_ioctl }, section "___ksymtab+dvb_generic_ioctl", align 4
@dvbdev_register_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dvbdev_register_lock, i64 12), ptr getelementptr (i8, ptr @dvbdev_register_lock, i64 12) } }, align 4
@.str = private unnamed_addr constant [44 x i8] c"\013dvbdev: %s: couldn't find free device id\0A\00", align 1
@__func__.dvb_register_device = private unnamed_addr constant [20 x i8] c"dvb_register_device\00", align 1
@dvb_register_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&dvbdev->wait_queue\00", align 1
@minor_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @minor_rwsem, i64 16), ptr getelementptr (i8, ptr @minor_rwsem, i64 16) } }, align 4
@dvb_minors = internal unnamed_addr global [256 x ptr] zeroinitializer, align 4
@dvb_class = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"dvb%d.%s%d\00", align 1
@dnames = internal unnamed_addr constant [9 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"\013dvbdev: %s: failed to create device dvb%d.%s%d (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"\017dvbdev: %s: DVB: register adapter%d/%s%d @ minor: %i (0x%02x)\0A\00", align 1
@__kstrtab_dvb_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_register_device to i32), ptr @__kstrtab_dvb_register_device, ptr @__kstrtabns_dvb_register_device }, section "___ksymtab+dvb_register_device", align 4
@__kstrtab_dvb_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_remove_device to i32), ptr @__kstrtab_dvb_remove_device, ptr @__kstrtabns_dvb_remove_device }, section "___ksymtab+dvb_remove_device", align 4
@__kstrtab_dvb_free_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_free_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_free_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_free_device to i32), ptr @__kstrtab_dvb_free_device, ptr @__kstrtabns_dvb_free_device }, section "___ksymtab+dvb_free_device", align 4
@__kstrtab_dvb_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_unregister_device to i32), ptr @__kstrtab_dvb_unregister_device, ptr @__kstrtabns_dvb_unregister_device }, section "___ksymtab+dvb_unregister_device", align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"\016dvbdev: DVB: registering new adapter (%s)\0A\00", align 1
@dvb_register_adapter.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"&adap->mfe_lock\00", align 1
@dvb_adapter_list = internal global %struct.list_head { ptr @dvb_adapter_list, ptr @dvb_adapter_list }, align 4
@__kstrtab_dvb_register_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_register_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_register_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_register_adapter to i32), ptr @__kstrtab_dvb_register_adapter, ptr @__kstrtabns_dvb_register_adapter }, section "___ksymtab+dvb_register_adapter", align 4
@__kstrtab_dvb_unregister_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_unregister_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_unregister_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_unregister_adapter to i32), ptr @__kstrtab_dvb_unregister_adapter, ptr @__kstrtabns_dvb_unregister_adapter }, section "___ksymtab+dvb_unregister_adapter", align 4
@__kstrtab_dvb_module_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_module_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_module_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_module_probe to i32), ptr @__kstrtab_dvb_module_probe, ptr @__kstrtabns_dvb_module_probe }, section "___ksymtab_gpl+dvb_module_probe", align 4
@__kstrtab_dvb_module_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_module_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_module_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_module_release to i32), ptr @__kstrtab_dvb_module_release, ptr @__kstrtabns_dvb_module_release }, section "___ksymtab_gpl+dvb_module_release", align 4
@__UNIQUE_ID_description253 = internal constant [28 x i8] c"description=DVB Core Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [55 x i8] c"author=Marcus Metzler, Ralph Metzler, Holger Waechtler\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"frontend\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"demux\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dvr\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"osd\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"DVB\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\013dvbdev: dvb-core: unable to get major %d\0A\00", align 1
@dvb_device_cdev = internal global %struct.cdev zeroinitializer, align 4
@dvb_device_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dvb_device_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [54 x i8] c"\013dvbdev: dvb-core: unable register character device\0A\00", align 1
@init_dvbdev.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"dvb\00", align 1
@dvbdev_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dvbdev_mutex, i64 12), ptr getelementptr (i8, ptr @dvbdev_mutex, i64 12) } }, align 4
@.str.23 = private unnamed_addr constant [19 x i8] c"DVB_ADAPTER_NUM=%d\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"DVB_DEVICE_TYPE=%s\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"DVB_DEVICE_NUM=%d\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"dvb/adapter%d/%s%d\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_dvbdev_debug252, ptr @__UNIQUE_ID_dvbdev_debugtype251, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_dvb_free_device, ptr @__ksymtab_dvb_generic_ioctl, ptr @__ksymtab_dvb_generic_open, ptr @__ksymtab_dvb_generic_release, ptr @__ksymtab_dvb_module_probe, ptr @__ksymtab_dvb_module_release, ptr @__ksymtab_dvb_register_adapter, ptr @__ksymtab_dvb_register_device, ptr @__ksymtab_dvb_remove_device, ptr @__ksymtab_dvb_unregister_adapter, ptr @__ksymtab_dvb_unregister_device, ptr @__param_dvbdev_debug], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dvb_generic_open(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %17, %15 ], [ %21, %19 ]
  %25 = phi ptr [ %16, %15 ], [ %20, %19 ]
  %26 = add i32 %24, -1
  store i32 %26, ptr %25, align 4
  %27 = add i32 %8, -1
  store i32 %27, ptr %7, align 4
  br label %28

28:                                               ; preds = %23, %19, %15, %6, %2
  %29 = phi i32 [ 0, %23 ], [ -19, %2 ], [ -16, %6 ], [ -16, %15 ], [ -16, %19 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dvb_generic_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 7
  %12 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 6
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %6, %2
  %20 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_generic_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @dvb_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %9)
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = phi i32 [ %12, %11 ], [ -19, %3 ], [ -22, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !8
  %6 = icmp ult i32 %1, 1073741824
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = inttoptr i32 %2 to ptr
  br label %36

9:                                                ; preds = %4
  %10 = lshr i32 %1, 16
  %11 = and i32 %10, 16383
  %12 = icmp ult i32 %11, 129
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ null, %9 ], [ %14, %13 ]
  %18 = phi ptr [ %5, %9 ], [ %14, %13 ]
  %19 = inttoptr i32 %2 to ptr
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 %11, i32 -1090519040) #13, !srcloc !9
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30, !prof !10

23:                                               ; preds = %16
  %24 = tail call ptr @llvm.thread.pointer() #11
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #14, !srcloc !11
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %29 = call i32 @arm_copy_from_user(ptr noundef nonnull %18, ptr noundef %19, i32 noundef %11) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i32 [ %29, %23 ], [ %11, %16 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !10

33:                                               ; preds = %30
  %34 = sub i32 %11, %31
  %35 = getelementptr i8, ptr %18, i32 %34
  call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %31, i1 false) #11
  br label %63

36:                                               ; preds = %30, %7
  %37 = phi ptr [ null, %7 ], [ %17, %30 ]
  %38 = phi ptr [ %8, %7 ], [ %18, %30 ]
  %39 = call i32 %3(ptr noundef %0, i32 noundef %1, ptr noundef %38) #11
  %40 = icmp eq i32 %39, -515
  %41 = select i1 %40, i32 -25, i32 %39
  %42 = icmp sgt i32 %41, -1
  %43 = icmp slt i32 %1, 0
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = inttoptr i32 %2 to ptr
  %47 = lshr i32 %1, 16
  %48 = and i32 %47, 16383
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %46, i32 %48, i32 -1090519040) #13, !srcloc !14
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = tail call ptr @llvm.thread.pointer() #11
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #14, !srcloc !11
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %58 = call i32 @arm_copy_to_user(ptr noundef %46, ptr noundef %38, i32 noundef %48) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %59

59:                                               ; preds = %52, %45
  %60 = phi i32 [ %58, %52 ], [ %48, %45 ]
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 %39, i32 -14
  br label %63

63:                                               ; preds = %59, %36, %33
  %64 = phi ptr [ %37, %36 ], [ %17, %33 ], [ %37, %59 ]
  %65 = phi i32 [ %41, %36 ], [ -14, %33 ], [ %62, %59 ]
  call void @kfree(ptr noundef %64) #11
  br label %66

66:                                               ; preds = %63, %13
  %67 = phi i32 [ %65, %63 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #11
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_register_device(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 %5) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @dvbdev_register_lock) #11
  %7 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %29, label %10

10:                                               ; preds = %24, %6
  %11 = phi i32 [ %25, %24 ], [ 0, %6 ]
  br label %12

12:                                               ; preds = %21, %10
  %13 = phi ptr [ %22, %21 ], [ %8, %10 ]
  %14 = getelementptr inbounds %struct.dvb_device, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dvb_device, ptr %13, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %7
  br i1 %23, label %29, label %12

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %11, 1
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %27, label %10

27:                                               ; preds = %24
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_register_lock) #11
  store ptr null, ptr %1, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvb_register_device) #15
  br label %89

29:                                               ; preds = %21, %6
  %30 = phi i32 [ 0, %6 ], [ %11, %21 ]
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 60) #16
  store ptr %32, ptr %1, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_register_lock) #11
  br label %89

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.dvb_device, ptr %2, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @kmemdup(ptr noundef %37, i32 noundef 128, i32 noundef 3264) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @kfree(ptr noundef nonnull %32) #11
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_register_lock) #11
  br label %89

41:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(60) %32, ptr noundef align 4 dereferenceable(60) %2, i32 56, i1 false)
  %42 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 3
  store i32 %4, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 5
  store i32 %30, ptr %43, align 8
  %44 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 2
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 11
  store ptr %3, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 1
  store ptr %38, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %47, ptr noundef nonnull @.str.1, ptr noundef nonnull @dvb_register_device.__key) #11
  %48 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  store ptr %49, ptr %38, align 4
  %50 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 2, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %32, ptr %50, align 4
  store ptr %7, ptr %32, align 8
  %52 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %32, ptr %51, align 4
  tail call void @down_write(ptr noundef nonnull @minor_rwsem) #11
  br label %53

53:                                               ; preds = %58, %41
  %54 = phi i32 [ 0, %41 ], [ %59, %58 ]
  %55 = getelementptr [256 x ptr], ptr @dvb_minors, i32 0, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = add nuw nsw i32 %54, 1
  %60 = icmp eq i32 %59, 256
  br i1 %60, label %61, label %53

61:                                               ; preds = %58
  %62 = load ptr, ptr %52, align 4
  %63 = load ptr, ptr %32, align 8
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  tail call void @kfree(ptr noundef nonnull %38) #11
  tail call void @kfree(ptr noundef nonnull %32) #11
  tail call void @up_write(ptr noundef nonnull @minor_rwsem) #11
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_register_lock) #11
  br label %89

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 4
  store i32 %54, ptr %66, align 4
  store ptr %32, ptr %55, align 4
  tail call void @up_write(ptr noundef nonnull @minor_rwsem) #11
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_register_lock) #11
  %67 = load ptr, ptr @dvb_class, align 4
  %68 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = or i32 %54, 222298112
  %71 = load i32, ptr %0, align 4
  %72 = getelementptr [9 x ptr], ptr @dnames, i32 0, i32 %4
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %67, ptr noundef %69, i32 noundef %70, ptr noundef nonnull %32, ptr noundef nonnull @.str.3, i32 noundef %71, ptr noundef %73, i32 noundef %30) #11
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load i32, ptr %0, align 4
  %78 = ptrtoint ptr %74 to i32
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_register_device, i32 noundef %77, ptr noundef %73, i32 noundef %30, i32 noundef %78) #15
  %80 = load ptr, ptr %52, align 4
  %81 = load ptr, ptr %32, align 8
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  tail call void @kfree(ptr noundef nonnull %38) #11
  tail call void @kfree(ptr noundef nonnull %32) #11
  br label %89

83:                                               ; preds = %65
  %84 = load i32, ptr @dvbdev_debug, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %0, align 4
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dvb_register_device, i32 noundef %87, ptr noundef %73, i32 noundef %30, i32 noundef %54, i32 noundef %54) #15
  br label %89

89:                                               ; preds = %86, %83, %76, %61, %40, %34, %27
  %90 = phi i32 [ -23, %27 ], [ -22, %61 ], [ %78, %76 ], [ -12, %40 ], [ -12, %34 ], [ 0, %86 ], [ 0, %83 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_remove_device(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @minor_rwsem) #11
  %4 = getelementptr inbounds %struct.dvb_device, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [256 x ptr], ptr @dvb_minors, i32 0, i32 %5
  store ptr null, ptr %6, align 4
  tail call void @up_write(ptr noundef nonnull @minor_rwsem) #11
  %7 = load ptr, ptr @dvb_class, align 4
  %8 = load i32, ptr %4, align 4
  %9 = or i32 %8, 222298112
  tail call void @device_destroy(ptr noundef %7, i32 noundef %9) #11
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  br label %14

14:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_free_device(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dvb_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  tail call void @kfree(ptr noundef nonnull %0) #11
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_unregister_device(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @minor_rwsem) #11
  %4 = getelementptr inbounds %struct.dvb_device, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [256 x ptr], ptr @dvb_minors, i32 0, i32 %5
  store ptr null, ptr %6, align 4
  tail call void @up_write(ptr noundef nonnull @minor_rwsem) #11
  %7 = load ptr, ptr @dvb_class, align 4
  %8 = load i32, ptr %4, align 4
  %9 = or i32 %8, 222298112
  tail call void @device_destroy(ptr noundef %7, i32 noundef %9) #11
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = getelementptr inbounds %struct.dvb_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #11
  tail call void @kfree(ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_register_adapter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @dvbdev_register_lock) #11
  br label %6

6:                                                ; preds = %149, %5
  %7 = phi i32 [ 0, %5 ], [ %150, %149 ]
  %8 = getelementptr i16, ptr %4, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = icmp ult i16 %9, 16
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = zext i16 %9 to i32
  br label %13

13:                                               ; preds = %17, %11
  %14 = phi ptr [ @dvb_adapter_list, %11 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @dvb_adapter_list
  br i1 %16, label %152, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 -4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %149, label %13

21:                                               ; preds = %25, %6
  %22 = phi ptr [ %23, %25 ], [ @dvb_adapter_list, %6 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @dvb_adapter_list
  br i1 %24, label %154, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %21

29:                                               ; preds = %33, %25
  %30 = phi ptr [ %31, %33 ], [ @dvb_adapter_list, %25 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, @dvb_adapter_list
  br i1 %32, label %154, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 -4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %29

37:                                               ; preds = %41, %33
  %38 = phi ptr [ %39, %41 ], [ @dvb_adapter_list, %33 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, @dvb_adapter_list
  br i1 %40, label %154, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %39, i32 -4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %37

45:                                               ; preds = %49, %41
  %46 = phi ptr [ %47, %49 ], [ @dvb_adapter_list, %41 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, @dvb_adapter_list
  br i1 %48, label %154, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %47, i32 -4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %45

53:                                               ; preds = %57, %49
  %54 = phi ptr [ %55, %57 ], [ @dvb_adapter_list, %49 ]
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, @dvb_adapter_list
  br i1 %56, label %154, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %55, i32 -4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %53

61:                                               ; preds = %65, %57
  %62 = phi ptr [ %63, %65 ], [ @dvb_adapter_list, %57 ]
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, @dvb_adapter_list
  br i1 %64, label %154, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %63, i32 -4
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 5
  br i1 %68, label %69, label %61

69:                                               ; preds = %73, %65
  %70 = phi ptr [ %71, %73 ], [ @dvb_adapter_list, %65 ]
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, @dvb_adapter_list
  br i1 %72, label %154, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %71, i32 -4
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %77, label %69

77:                                               ; preds = %81, %73
  %78 = phi ptr [ %79, %81 ], [ @dvb_adapter_list, %73 ]
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, @dvb_adapter_list
  br i1 %80, label %154, label %81

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %79, i32 -4
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 7
  br i1 %84, label %85, label %77

85:                                               ; preds = %89, %81
  %86 = phi ptr [ %87, %89 ], [ @dvb_adapter_list, %81 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, @dvb_adapter_list
  br i1 %88, label %154, label %89

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %87, i32 -4
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %93, label %85

93:                                               ; preds = %97, %89
  %94 = phi ptr [ %95, %97 ], [ @dvb_adapter_list, %89 ]
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, @dvb_adapter_list
  br i1 %96, label %154, label %97

97:                                               ; preds = %93
  %98 = getelementptr i8, ptr %95, i32 -4
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 9
  br i1 %100, label %101, label %93

101:                                              ; preds = %105, %97
  %102 = phi ptr [ %103, %105 ], [ @dvb_adapter_list, %97 ]
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, @dvb_adapter_list
  br i1 %104, label %154, label %105

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %103, i32 -4
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 10
  br i1 %108, label %109, label %101

109:                                              ; preds = %113, %105
  %110 = phi ptr [ %111, %113 ], [ @dvb_adapter_list, %105 ]
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, @dvb_adapter_list
  br i1 %112, label %154, label %113

113:                                              ; preds = %109
  %114 = getelementptr i8, ptr %111, i32 -4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 11
  br i1 %116, label %117, label %109

117:                                              ; preds = %121, %113
  %118 = phi ptr [ %119, %121 ], [ @dvb_adapter_list, %113 ]
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, @dvb_adapter_list
  br i1 %120, label %154, label %121

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %119, i32 -4
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 12
  br i1 %124, label %125, label %117

125:                                              ; preds = %129, %121
  %126 = phi ptr [ %127, %129 ], [ @dvb_adapter_list, %121 ]
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, @dvb_adapter_list
  br i1 %128, label %154, label %129

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %127, i32 -4
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 13
  br i1 %132, label %133, label %125

133:                                              ; preds = %137, %129
  %134 = phi ptr [ %135, %137 ], [ @dvb_adapter_list, %129 ]
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, @dvb_adapter_list
  br i1 %136, label %154, label %137

137:                                              ; preds = %133
  %138 = getelementptr i8, ptr %135, i32 -4
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 14
  br i1 %140, label %141, label %133

141:                                              ; preds = %145, %137
  %142 = phi ptr [ %143, %145 ], [ @dvb_adapter_list, %137 ]
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, @dvb_adapter_list
  br i1 %144, label %154, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %143, i32 -4
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 15
  br i1 %148, label %168, label %141

149:                                              ; preds = %17
  %150 = add nuw nsw i32 %7, 1
  %151 = icmp eq i32 %150, 16
  br i1 %151, label %168, label %6

152:                                              ; preds = %13
  %153 = zext i16 %9 to i32
  br label %154

154:                                              ; preds = %152, %141, %133, %125, %117, %109, %101, %93, %85, %77, %69, %61, %53, %45, %37, %29, %21
  %155 = phi i32 [ %153, %152 ], [ 15, %141 ], [ 14, %133 ], [ 13, %125 ], [ 12, %117 ], [ 11, %109 ], [ 10, %101 ], [ 9, %93 ], [ 8, %85 ], [ 7, %77 ], [ 6, %69 ], [ 5, %61 ], [ 4, %53 ], [ 3, %45 ], [ 2, %37 ], [ 1, %29 ], [ 0, %21 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %0, i8 0, i32 72, i1 false)
  %156 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 2
  store volatile ptr %156, ptr %156, align 4
  %157 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 2, i32 1
  store ptr %156, ptr %157, align 4
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %1) #15
  store i32 %155, ptr %0, align 4
  %159 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 3
  store ptr %1, ptr %159, align 4
  %160 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 7
  store ptr %2, ptr %160, align 4
  %161 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 6
  store ptr %3, ptr %161, align 4
  %162 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 8
  store i32 0, ptr %162, align 4
  %163 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 9
  store ptr null, ptr %163, align 4
  %164 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %164, ptr noundef nonnull @.str.7, ptr noundef nonnull @dvb_register_adapter.__key) #11
  %165 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 1
  %166 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dvb_adapter_list, i32 0, i32 1), align 4
  store ptr %165, ptr getelementptr inbounds (%struct.list_head, ptr @dvb_adapter_list, i32 0, i32 1), align 4
  store ptr @dvb_adapter_list, ptr %165, align 4
  %167 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 1, i32 1
  store ptr %166, ptr %167, align 4
  store volatile ptr %165, ptr %166, align 4
  br label %168

168:                                              ; preds = %154, %149, %145
  %169 = phi i32 [ %155, %154 ], [ -23, %145 ], [ -23, %149 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_register_lock) #11
  ret i32 %169
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_unregister_adapter(ptr nocapture noundef %0) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @dvbdev_register_lock) #11
  %2 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_register_lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dvb_module_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) #2 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 56) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %1, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @strscpy(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef 20) #11
  br label %15

13:                                               ; preds = %9
  %14 = tail call i32 @strscpy(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 20) #11
  br label %15

15:                                               ; preds = %13, %11
  %16 = zext i8 %3 to i16
  %17 = getelementptr inbounds %struct.i2c_board_info, ptr %7, i32 0, i32 2
  store i16 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_board_info, ptr %7, i32 0, i32 4
  store ptr %4, ptr %18, align 4
  %19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef %0) #11
  %20 = tail call ptr @i2c_new_client_device(ptr noundef %2, ptr noundef nonnull %7) #11
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.device_driver, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call zeroext i1 @try_module_get(ptr noundef %30) #11
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @i2c_unregister_device(ptr noundef nonnull %20) #11
  br label %33

33:                                               ; preds = %32, %28, %24, %15
  %34 = phi ptr [ null, %15 ], [ null, %24 ], [ %20, %28 ], [ null, %32 ]
  tail call void @kfree(ptr noundef nonnull %7) #11
  br label %35

35:                                               ; preds = %33, %5
  %36 = phi ptr [ null, %5 ], [ %34, %33 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_module_release(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @module_put(ptr noundef %7) #11
  tail call void @i2c_unregister_device(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @register_chrdev_region(i32 noundef 222298112, i32 noundef 256, ptr noundef nonnull @.str.19) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef 212) #15
  br label %20

5:                                                ; preds = %0
  tail call void @cdev_init(ptr noundef nonnull @dvb_device_cdev, ptr noundef nonnull @dvb_device_fops) #11
  %6 = tail call i32 @cdev_add(ptr noundef nonnull @dvb_device_cdev, i32 noundef 222298112, i32 noundef 256) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #15
  br label %18

10:                                               ; preds = %5
  %11 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_dvbdev.__key) #11
  store ptr %11, ptr @dvb_class, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.class, ptr %11, i32 0, i32 5
  store ptr @dvb_uevent, ptr %16, align 4
  %17 = getelementptr inbounds %struct.class, ptr %11, i32 0, i32 6
  store ptr @dvb_devnode, ptr %17, align 4
  br label %20

18:                                               ; preds = %13, %8
  %19 = phi i32 [ %6, %8 ], [ %14, %13 ]
  tail call void @cdev_del(ptr noundef nonnull @dvb_device_cdev) #11
  tail call void @unregister_chrdev_region(i32 noundef 222298112, i32 noundef 256) #11
  br label %20

20:                                               ; preds = %18, %15, %3
  %21 = phi i32 [ %1, %3 ], [ %19, %18 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #7 section ".exit.text" {
  %1 = load ptr, ptr @dvb_class, align 4
  tail call void @class_destroy(ptr noundef %1) #11
  tail call void @cdev_del(ptr noundef nonnull @dvb_device_cdev) #11
  tail call void @unregister_chrdev_region(i32 noundef 222298112, i32 noundef 256) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %7) #11
  %9 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [9 x ptr], ptr @dnames, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %15) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @dvb_devnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [9 x ptr], ptr @dnames, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.26, i32 noundef %7, ptr noundef %11, i32 noundef %13) #11
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_device_open(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @dvbdev_mutex) #11
  tail call void @down_read(ptr noundef nonnull @minor_rwsem) #11
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = getelementptr [256 x ptr], ptr @dvb_minors, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dvb_device, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #11
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load ptr, ptr %10, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %7, ptr %20, align 8
  %21 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %22, align 4
  tail call void @module_put(ptr noundef %25) #11
  br label %26

26:                                               ; preds = %24, %19
  store ptr %17, ptr %21, align 4
  %27 = getelementptr inbounds %struct.file_operations, ptr %17, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 %28(ptr noundef %0, ptr noundef %1) #11
  br label %32

32:                                               ; preds = %30, %26, %16, %13, %9, %2
  %33 = phi i32 [ %31, %30 ], [ 0, %26 ], [ -19, %13 ], [ -19, %16 ], [ -19, %2 ], [ -19, %9 ]
  tail call void @up_read(ptr noundef nonnull @minor_rwsem) #11
  tail call void @mutex_unlock(ptr noundef nonnull @dvbdev_mutex) #11
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

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
!9 = !{i64 2152410009, i64 2152410034}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 4906121}
!12 = !{i64 4906318}
!13 = !{i64 2152391597}
!14 = !{i64 2152410587, i64 2152410612}
