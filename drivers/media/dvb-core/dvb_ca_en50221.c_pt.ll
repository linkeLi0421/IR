; ModuleID = '/llk/IR/drivers/media/dvb-core/dvb_ca_en50221.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_ca_en50221.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_camchange_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_camchange_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_camchange_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_camready_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_camready_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_camready_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_frda_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_frda_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_frda_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_release:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_ca_private = type { %struct.kref, ptr, ptr, i32, i32, ptr, %struct.wait_queue_head, ptr, i8, i32, i32, %struct.mutex }
%struct.dvb_ca_slot = type { i32, %struct.mutex, %struct.atomic_t, i32, i32, i8, i8, i32, %struct.dvb_ringbuffer, i32 }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.46, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.46 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ca_caps = type { i32, i32, i32, i32 }
%struct.ca_slot_info = type { i32, i32, i32 }

@__param_str_cam_debug = internal constant [10 x i8] c"cam_debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_ca_en50221_debug = internal global i32 0, align 4
@__param_cam_debug = internal constant %struct.kernel_param { ptr @__param_str_cam_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @dvb_ca_en50221_debug } }, section "__param", align 4
@__UNIQUE_ID_cam_debugtype208 = internal constant [23 x i8] c"parmtype=cam_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cam_debug209 = internal constant [45 x i8] c"parm=cam_debug:enable verbose debug messages\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [60 x i8] c"\017dvb_ca_en50221: %s: CAMCHANGE IRQ slot:%i change_type:%i\0A\00", align 1
@__func__.dvb_ca_en50221_camchange_irq = private unnamed_addr constant [29 x i8] c"dvb_ca_en50221_camchange_irq\00", align 1
@__kstrtab_dvb_ca_en50221_camchange_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_camchange_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_camchange_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_camchange_irq to i32), ptr @__kstrtab_dvb_ca_en50221_camchange_irq, ptr @__kstrtabns_dvb_ca_en50221_camchange_irq }, section "___ksymtab+dvb_ca_en50221_camchange_irq", align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\017dvb_ca_en50221: %s: CAMREADY IRQ slot:%i\0A\00", align 1
@__func__.dvb_ca_en50221_camready_irq = private unnamed_addr constant [28 x i8] c"dvb_ca_en50221_camready_irq\00", align 1
@__kstrtab_dvb_ca_en50221_camready_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_camready_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_camready_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_camready_irq to i32), ptr @__kstrtab_dvb_ca_en50221_camready_irq, ptr @__kstrtabns_dvb_ca_en50221_camready_irq }, section "___ksymtab+dvb_ca_en50221_camready_irq", align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"\017dvb_ca_en50221: %s: FR/DA IRQ slot:%i\0A\00", align 1
@__func__.dvb_ca_en50221_frda_irq = private unnamed_addr constant [24 x i8] c"dvb_ca_en50221_frda_irq\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\017dvb_ca_en50221: %s: CAM supports DA IRQ\0A\00", align 1
@__kstrtab_dvb_ca_en50221_frda_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_frda_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_frda_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_frda_irq to i32), ptr @__kstrtab_dvb_ca_en50221_frda_irq, ptr @__kstrtabns_dvb_ca_en50221_frda_irq }, section "___ksymtab+dvb_ca_en50221_frda_irq", align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"\017dvb_ca_en50221: %s: %s\0A\00", align 1
@__func__.dvb_ca_en50221_init = private unnamed_addr constant [20 x i8] c"dvb_ca_en50221_init\00", align 1
@dvb_ca_en50221_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"&ca->wait_queue\00", align 1
@dvbdev_ca = internal constant %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_ca_fops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr null }, align 4
@dvb_ca_en50221_init.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"&sl->slot_lock\00", align 1
@dvb_ca_en50221_init.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"&ca->ioctl_mutex\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"kdvb-ca-%i:%i\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"\013dvb_ca_en50221: dvb_ca_init: failed to start kernel_thread (%d)\0A\00", align 1
@__kstrtab_dvb_ca_en50221_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_init to i32), ptr @__kstrtab_dvb_ca_en50221_init, ptr @__kstrtabns_dvb_ca_en50221_init }, section "___ksymtab+dvb_ca_en50221_init", align 4
@__func__.dvb_ca_en50221_release = private unnamed_addr constant [23 x i8] c"dvb_ca_en50221_release\00", align 1
@__kstrtab_dvb_ca_en50221_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_release to i32), ptr @__kstrtab_dvb_ca_en50221_release, ptr @__kstrtabns_dvb_ca_en50221_release }, section "___ksymtab+dvb_ca_en50221_release", align 4
@__func__.dvb_ca_en50221_thread_wakeup = private unnamed_addr constant [29 x i8] c"dvb_ca_en50221_thread_wakeup\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dvb_ca_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @dvb_ca_en50221_io_read, ptr @dvb_ca_en50221_io_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_ca_en50221_io_poll, ptr @dvb_ca_en50221_io_ioctl, ptr null, ptr null, i32 0, ptr @dvb_ca_en50221_io_open, ptr null, ptr @dvb_ca_en50221_io_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__func__.dvb_ca_en50221_io_read = private unnamed_addr constant [23 x i8] c"dvb_ca_en50221_io_read\00", align 1
@.str.12 = private unnamed_addr constant [94 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: BUG: read packet ended before last_fragment encountered\0A\00", align 1
@__func__.dvb_ca_en50221_io_write = private unnamed_addr constant [24 x i8] c"dvb_ca_en50221_io_write\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.dvb_ca_en50221_write_data = private unnamed_addr constant [26 x i8] c"dvb_ca_en50221_write_data\00", align 1
@.str.15 = private unnamed_addr constant [94 x i8] c"\017dvb_ca_en50221: %s: Wrote CA packet for slot %i, connection id 0x%x last_frag:%i size:0x%x\0A\00", align 1
@__func__.dvb_ca_en50221_io_poll = private unnamed_addr constant [23 x i8] c"dvb_ca_en50221_io_poll\00", align 1
@__func__.dvb_ca_en50221_io_do_ioctl = private unnamed_addr constant [27 x i8] c"dvb_ca_en50221_io_do_ioctl\00", align 1
@__func__.dvb_ca_en50221_io_open = private unnamed_addr constant [23 x i8] c"dvb_ca_en50221_io_open\00", align 1
@__func__.dvb_ca_en50221_io_release = private unnamed_addr constant [26 x i8] c"dvb_ca_en50221_io_release\00", align 1
@__func__.dvb_ca_en50221_thread = private unnamed_addr constant [22 x i8] c"dvb_ca_en50221_thread\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"\013dvb_ca_en50221: dvb_ca adaptor %d: PC card did not respond :(\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Invalid PC card inserted :(\0A\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Unable to reset CAM IF\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"\017dvb_ca_en50221: %s: DVB CAM validated successfully\0A\00", align 1
@__func__.dvb_ca_en50221_thread_state_machine = private unnamed_addr constant [36 x i8] c"dvb_ca_en50221_thread_state_machine\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: DVB CAM did not respond :(\0A\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: DVB CAM link initialisation failed :(\0A\00", align 1
@.str.23 = private unnamed_addr constant [74 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Unable to allocate CAM rx buffer :(\0A\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"\016dvb_ca_en50221: dvb_ca adapter %d: DVB CAM detected and initialised successfully\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"DVB_CI_V\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"1.00\00", align 1
@.str.27 = private unnamed_addr constant [82 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Unsupported DVB CAM module version %c%c%c%c\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"DVB_HOST\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"DVB_CI_MODULE\00", align 1
@.str.30 = private unnamed_addr constant [76 x i8] c"\017dvb_ca_en50221: %s: dvb_ca: Skipping unknown tuple type:0x%x length:0x%x\0A\00", align 1
@__func__.dvb_ca_en50221_parse_attributes = private unnamed_addr constant [32 x i8] c"dvb_ca_en50221_parse_attributes\00", align 1
@.str.31 = private unnamed_addr constant [98 x i8] c"\017dvb_ca_en50221: %s: Valid DVB CAM detected MANID:%x DEVID:%x CONFIGBASE:0x%x CONFIGOPTION:0x%x\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"\017dvb_ca_en50221: %s: END OF CHAIN TUPLE type:0x%x\0A\00", align 1
@__func__.dvb_ca_en50221_read_tuple = private unnamed_addr constant [26 x i8] c"dvb_ca_en50221_read_tuple\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"\017dvb_ca_en50221: %s: TUPLE type:0x%x length:%i\0A\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"\017dvb_ca_en50221: %s:   0x%02x: 0x%02x %c\0A\00", align 1
@__func__.dvb_ca_en50221_set_configoption = private unnamed_addr constant [32 x i8] c"dvb_ca_en50221_set_configoption\00", align 1
@.str.35 = private unnamed_addr constant [69 x i8] c"\017dvb_ca_en50221: %s: Set configoption 0x%x, read configoption 0x%x\0A\00", align 1
@__func__.dvb_ca_en50221_link_init = private unnamed_addr constant [25 x i8] c"dvb_ca_en50221_link_init\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"\017dvb_ca_en50221: %s: Chosen link buffer size of %i\0A\00", align 1
@__func__.dvb_ca_en50221_wait_if_status = private unnamed_addr constant [30 x i8] c"dvb_ca_en50221_wait_if_status\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"\017dvb_ca_en50221: %s: %s succeeded timeout:%lu\0A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"\017dvb_ca_en50221: %s: %s failed timeout:%lu\0A\00", align 1
@__func__.dvb_ca_en50221_read_data = private unnamed_addr constant [25 x i8] c"dvb_ca_en50221_read_data\00", align 1
@.str.39 = private unnamed_addr constant [109 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: CAM tried to send a buffer larger than the link buffer size (%i > %i)!\0A\00", align 1
@.str.40 = private unnamed_addr constant [84 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: CAM sent a buffer that was less than 2 bytes!\0A\00", align 1
@.str.41 = private unnamed_addr constant [94 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: CAM tried to send a buffer larger than the ecount size!\0A\00", align 1
@.str.42 = private unnamed_addr constant [96 x i8] c"\017dvb_ca_en50221: %s: Received CA packet for slot %i connection id 0x%x last_frag:%i size:0x%x\0A\00", align 1
@__func__.dvb_ca_en50221_slot_shutdown = private unnamed_addr constant [29 x i8] c"dvb_ca_en50221_slot_shutdown\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"\017dvb_ca_en50221: %s: Slot %i shutdown\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_cam_debug209, ptr @__UNIQUE_ID_cam_debugtype208, ptr @__ksymtab_dvb_ca_en50221_camchange_irq, ptr @__ksymtab_dvb_ca_en50221_camready_irq, ptr @__ksymtab_dvb_ca_en50221_frda_irq, ptr @__ksymtab_dvb_ca_en50221_init, ptr @__ksymtab_dvb_ca_en50221_release, ptr @__param_cam_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_camchange_irq(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_ca_private, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvb_ca_en50221_camchange_irq, i32 noundef %1, i32 noundef %2) #12
  br label %12

12:                                               ; preds = %10, %3
  %13 = icmp ult i32 %2, 2
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  %15 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %1, i32 3
  store i32 %2, ptr %15, align 4
  %16 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %1, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #13, !srcloc !8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #13, !srcloc !9
  %18 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup) #12
  br label %22

22:                                               ; preds = %20, %14
  %23 = getelementptr inbounds %struct.dvb_ca_private, ptr %5, i32 0, i32 8
  %24 = load i8, ptr %23, align 4
  %25 = or i8 %24, 2
  store i8 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %26 = getelementptr inbounds %struct.dvb_ca_private, ptr %5, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @wake_up_process(ptr noundef %27) #13
  br label %29

29:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_ca_en50221_thread_wakeup(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup) #12
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = or i8 %8, 2
  store i8 %9, ptr %7, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %10 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @wake_up_process(ptr noundef %11) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_camready_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_ca_private, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.dvb_ca_slot, ptr %6, i32 %1
  %8 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dvb_ca_en50221_camready_irq, i32 noundef %1) #12
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, ptr %7, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  store i32 5, ptr %7, align 4
  %16 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup) #12
  br label %20

20:                                               ; preds = %18, %15
  %21 = getelementptr inbounds %struct.dvb_ca_private, ptr %4, i32 0, i32 8
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 2
  store i8 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %24 = getelementptr inbounds %struct.dvb_ca_private, ptr %4, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @wake_up_process(ptr noundef %25) #13
  br label %27

27:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_frda_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_ca_private, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.dvb_ca_slot, ptr %6, i32 %1
  %8 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dvb_ca_en50221_frda_irq, i32 noundef %1) #12
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, ptr %7, align 4
  switch i32 %13, label %48 [
    i32 7, label %14
    i32 2, label %31
  ]

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.dvb_ca_private, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #13
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dvb_ca_en50221_frda_irq) #12
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr %struct.dvb_ca_slot, ptr %6, i32 %1, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %28, align 1
  br label %48

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.dvb_ca_private, ptr %4, i32 0, i32 8
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup) #12
  %41 = load i8, ptr %32, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i8 [ %33, %36 ], [ %41, %39 ]
  %44 = or i8 %43, 2
  store i8 %44, ptr %32, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %45 = getelementptr inbounds %struct.dvb_ca_private, ptr %4, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @wake_up_process(ptr noundef %46) #13
  br label %48

48:                                               ; preds = %42, %31, %27, %14, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ca_en50221_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_init, ptr noundef nonnull @__func__.dvb_ca_en50221_init) #12
  br label %9

9:                                                ; preds = %7, %4
  %10 = icmp slt i32 %3, 1
  br i1 %10, label %84, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 72) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %11
  store volatile i32 1, ptr %13, align 8
  %16 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 1
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 3
  store i32 %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 4
  store i32 %3, ptr %18, align 8
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 84) #13
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %21, label %23, !prof !11

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 5
  store ptr null, ptr %22, align 4
  br label %79

23:                                               ; preds = %15
  %24 = extractvalue { i32, i1 } %19, 0
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #15
  %26 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %79, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %29, ptr noundef nonnull @.str.5, ptr noundef nonnull @dvb_ca_en50221_init.__key) #13
  %30 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 8
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, -4
  store i8 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 10
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %1, i32 0, i32 12
  store ptr %13, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 2
  %36 = tail call i32 @dvb_register_device(ptr noundef %0, ptr noundef %35, ptr noundef nonnull @dvbdev_ca, ptr noundef nonnull %13, i32 noundef 4, i32 noundef 0) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %38, %28
  %39 = phi i32 [ %45, %38 ], [ 0, %28 ]
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr %struct.dvb_ca_slot, ptr %40, i32 %39
  %42 = getelementptr %struct.dvb_ca_slot, ptr %40, i32 %39, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(84) %41, i8 0, i64 84, i1 false)
  store volatile i32 0, ptr %42, align 4
  %43 = getelementptr %struct.dvb_ca_slot, ptr %40, i32 %39, i32 3
  store i32 0, ptr %43, align 4
  %44 = getelementptr %struct.dvb_ca_slot, ptr %40, i32 %39, i32 1
  tail call void @__mutex_init(ptr noundef %44, ptr noundef nonnull @.str.7, ptr noundef nonnull @dvb_ca_en50221_init.__key.6) #13
  %45 = add nuw nsw i32 %39, 1
  %46 = icmp eq i32 %45, %3
  br i1 %46, label %47, label %38

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %48, ptr noundef nonnull @.str.9, ptr noundef nonnull @dvb_ca_en50221_init.__key.8) #13
  %49 = tail call ptr @llvm.thread.pointer() #13
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73, !prof !12

53:                                               ; preds = %47
  %54 = load volatile i32, ptr %49, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !13
  tail call void @arm_heavy_mb() #13
  %58 = load ptr, ptr %35, align 8
  %59 = getelementptr inbounds %struct.dvb_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dvb_device, ptr %58, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dvb_ca_en50221_thread, ptr noundef nonnull %13, i32 noundef -1, ptr noundef nonnull @.str.10, i32 noundef %61, i32 noundef %63) #13
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = tail call i32 @wake_up_process(ptr noundef %64) #13
  %68 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 7
  store ptr %64, ptr %68, align 4
  br label %84

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.dvb_ca_private, ptr %13, i32 0, i32 7
  store ptr %64, ptr %70, align 4
  %71 = ptrtoint ptr %64 to i32
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %71) #12
  br label %73

73:                                               ; preds = %69, %53, %47
  %74 = phi i32 [ %71, %69 ], [ -4, %53 ], [ -4, %47 ]
  %75 = load ptr, ptr %35, align 8
  tail call void @dvb_unregister_device(ptr noundef %75) #13
  br label %76

76:                                               ; preds = %73, %28
  %77 = phi i32 [ %36, %28 ], [ %74, %73 ]
  %78 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %78) #13
  br label %79

79:                                               ; preds = %76, %23, %21
  %80 = phi i32 [ %77, %76 ], [ -12, %23 ], [ -12, %21 ]
  tail call void @kfree(ptr noundef nonnull %13) #13
  br label %81

81:                                               ; preds = %79, %11
  %82 = phi i32 [ %80, %79 ], [ -12, %11 ]
  %83 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %1, i32 0, i32 12
  store ptr null, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %66, %9
  %85 = phi i32 [ %82, %81 ], [ -22, %9 ], [ 0, %66 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_thread(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [257 x i8], align 1
  %7 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread, ptr noundef nonnull @__func__.dvb_ca_en50221_thread) #12
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 8
  br label %20

20:                                               ; preds = %52, %15
  %21 = phi i32 [ 0, %15 ], [ %55, %52 ]
  %22 = phi i32 [ 100000000, %15 ], [ %54, %52 ]
  %23 = getelementptr %struct.dvb_ca_slot, ptr %17, i32 %21
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %25 [
    i32 2, label %35
    i32 3, label %30
    i32 1, label %52
    i32 4, label %52
    i32 5, label %52
    i32 6, label %52
    i32 7, label %52
  ]

25:                                               ; preds = %20
  %26 = load i32, ptr %18, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 500, i32 6000
  br label %52

30:                                               ; preds = %20
  %31 = load i32, ptr %18, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 10, i32 6000
  br label %52

35:                                               ; preds = %20
  %36 = load i32, ptr %18, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 10, i32 6000
  %40 = load i8, ptr %19, align 4
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = getelementptr %struct.dvb_ca_slot, ptr %17, i32 %21, i32 6
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  %48 = and i32 %36, 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  %51 = select i1 %50, i32 10, i32 %39
  br label %52

52:                                               ; preds = %43, %35, %30, %25, %20, %20, %20, %20, %20
  %53 = phi i32 [ %29, %25 ], [ %34, %30 ], [ %39, %35 ], [ 10, %20 ], [ 10, %20 ], [ 10, %20 ], [ 10, %20 ], [ 10, %20 ], [ %51, %43 ]
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 %22) #13
  %55 = add nuw i32 %21, 1
  %56 = icmp eq i32 %55, %13
  br i1 %56, label %57, label %20

57:                                               ; preds = %52, %11
  %58 = phi i32 [ 100000000, %11 ], [ %54, %52 ]
  %59 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 9
  store i32 %58, ptr %59, align 4
  %60 = call zeroext i1 @kthread_should_stop() #13
  br i1 %60, label %830, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 8
  %63 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %64 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 3
  %65 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 1
  %66 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 2
  %68 = getelementptr inbounds [257 x i8], ptr %6, i32 0, i32 1
  %69 = getelementptr inbounds [257 x i8], ptr %6, i32 0, i32 3
  %70 = getelementptr inbounds [257 x i8], ptr %6, i32 0, i32 2
  %71 = ptrtoint ptr %6 to i32
  %72 = sub i32 12, %71
  %73 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %74 = getelementptr inbounds [257 x i8], ptr %6, i32 0, i32 2
  %75 = getelementptr inbounds [257 x i8], ptr %6, i32 0, i32 3
  %76 = getelementptr inbounds [257 x i8], ptr %6, i32 0, i32 4
  %77 = getelementptr inbounds [257 x i8], ptr %6, i32 0, i32 5
  br label %80

78:                                               ; preds = %826, %92
  %79 = call zeroext i1 @kthread_should_stop() #13
  br i1 %79, label %830, label %80

80:                                               ; preds = %78, %61
  %81 = load i8, ptr %62, align 4
  %82 = and i8 %81, 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = tail call ptr @llvm.thread.pointer() #13
  %86 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 1
  store volatile i32 1, ptr %86, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %87 = load i32, ptr %59, align 4
  %88 = call i32 @schedule_timeout(i32 noundef %87) #13
  %89 = call zeroext i1 @kthread_should_stop() #13
  br i1 %89, label %830, label %90

90:                                               ; preds = %84
  %91 = load i8, ptr %62, align 4
  br label %92

92:                                               ; preds = %90, %80
  %93 = phi i8 [ %91, %90 ], [ %81, %80 ]
  %94 = and i8 %93, -3
  store i8 %94, ptr %62, align 4
  %95 = load i32, ptr %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %78, label %97

97:                                               ; preds = %826, %92
  %98 = phi i32 [ %827, %826 ], [ 0, %92 ]
  %99 = load ptr, ptr %63, align 4
  %100 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98
  %101 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 1
  call void @mutex_lock(ptr noundef %101) #13
  %102 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 3
  %103 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 2
  br label %104

104:                                              ; preds = %206, %97
  %105 = load ptr, ptr %63, align 4
  %106 = getelementptr %struct.dvb_ca_slot, ptr %105, i32 %98
  %107 = load i32, ptr %64, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %104
  %111 = load ptr, ptr %65, align 4
  %112 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %111, i32 0, i32 10
  %113 = load ptr, ptr %112, align 4
  %114 = load i8, ptr %62, align 4
  %115 = and i8 %114, 1
  %116 = zext i8 %115 to i32
  %117 = call i32 %113(ptr noundef %111, i32 noundef %98, i32 noundef %116) #13
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  %120 = and i32 %117, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = load i32, ptr %106, align 4
  %124 = icmp eq i32 %123, 0
  %125 = xor i1 %119, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122, %110
  %127 = xor i1 %119, true
  %128 = zext i1 %127 to i32
  %129 = getelementptr %struct.dvb_ca_slot, ptr %105, i32 %98, i32 3
  store i32 %128, ptr %129, align 4
  %130 = getelementptr %struct.dvb_ca_slot, ptr %105, i32 %98, i32 2
  store volatile i32 1, ptr %130, align 4
  br label %141

131:                                              ; preds = %122
  %132 = icmp ne i32 %123, 4
  %133 = and i32 %117, 4
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %135, label %209, label %136

136:                                              ; preds = %131
  store i32 5, ptr %106, align 4
  br label %209

137:                                              ; preds = %104
  %138 = getelementptr %struct.dvb_ca_slot, ptr %105, i32 %98, i32 2
  %139 = load volatile i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %209, label %141

141:                                              ; preds = %137, %126
  %142 = load i32, ptr %100, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %160, label %144

144:                                              ; preds = %141
  %145 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown) #12
  br label %149

149:                                              ; preds = %147, %144
  %150 = load ptr, ptr %65, align 4
  %151 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %150, i32 0, i32 8
  %152 = load ptr, ptr %151, align 4
  %153 = call i32 %152(ptr noundef %150, i32 noundef %98) #13
  %154 = load ptr, ptr %63, align 4
  %155 = getelementptr %struct.dvb_ca_slot, ptr %154, i32 %98
  store i32 0, ptr %155, align 4
  call void @__wake_up(ptr noundef %66, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %156 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %149
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown, i32 noundef %98) #12
  br label %160

160:                                              ; preds = %158, %149, %141
  %161 = load i32, ptr %102, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 1, ptr %100, align 4
  br label %164

164:                                              ; preds = %163, %160
  %165 = load i32, ptr %12, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %206, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %63, align 4
  br label %169

169:                                              ; preds = %201, %167
  %170 = phi i32 [ 0, %167 ], [ %204, %201 ]
  %171 = phi i32 [ 100000000, %167 ], [ %203, %201 ]
  %172 = getelementptr %struct.dvb_ca_slot, ptr %168, i32 %170
  %173 = load i32, ptr %172, align 4
  switch i32 %173, label %174 [
    i32 2, label %184
    i32 3, label %179
    i32 1, label %201
    i32 4, label %201
    i32 5, label %201
    i32 6, label %201
    i32 7, label %201
  ]

174:                                              ; preds = %169
  %175 = load i32, ptr %64, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 500, i32 6000
  br label %201

179:                                              ; preds = %169
  %180 = load i32, ptr %64, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 10, i32 6000
  br label %201

184:                                              ; preds = %169
  %185 = load i32, ptr %64, align 4
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 10, i32 6000
  %189 = load i8, ptr %62, align 4
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %184
  %193 = getelementptr %struct.dvb_ca_slot, ptr %168, i32 %170, i32 6
  %194 = load i8, ptr %193, align 1
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  %197 = and i32 %185, 4
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %196, i1 true, i1 %198
  %200 = select i1 %199, i32 10, i32 %188
  br label %201

201:                                              ; preds = %192, %184, %179, %174, %169, %169, %169, %169, %169
  %202 = phi i32 [ %178, %174 ], [ %183, %179 ], [ %188, %184 ], [ 10, %169 ], [ 10, %169 ], [ 10, %169 ], [ 10, %169 ], [ 10, %169 ], [ %200, %192 ]
  %203 = call i32 @llvm.smin.i32(i32 %202, i32 %171) #13
  %204 = add nuw i32 %170, 1
  %205 = icmp eq i32 %204, %165
  br i1 %205, label %206, label %169

206:                                              ; preds = %201, %164
  %207 = phi i32 [ 100000000, %164 ], [ %203, %201 ]
  store i32 %207, ptr %59, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #13, !srcloc !8
  %208 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #13, !srcloc !15
  br label %104

209:                                              ; preds = %137, %136, %131
  %210 = load i32, ptr %100, align 4
  switch i32 %210, label %826 [
    i32 2, label %769
    i32 7, label %631
    i32 1, label %211
    i32 4, label %219
    i32 5, label %274
    i32 6, label %566
  ]

211:                                              ; preds = %209
  store i32 4, ptr %100, align 4
  %212 = load ptr, ptr %65, align 4
  %213 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %212, i32 0, i32 7
  %214 = load ptr, ptr %213, align 4
  %215 = call i32 %214(ptr noundef %212, i32 noundef %98) #13
  %216 = load volatile i32, ptr @jiffies, align 64
  %217 = add i32 %216, 1000
  %218 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 9
  store i32 %217, ptr %218, align 4
  br label %826

219:                                              ; preds = %209
  %220 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 9
  %221 = load i32, ptr %220, align 4
  %222 = load volatile i32, ptr @jiffies, align 64
  %223 = sub i32 %221, %222
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %826

225:                                              ; preds = %219
  %226 = load ptr, ptr %67, align 4
  %227 = getelementptr inbounds %struct.dvb_device, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 4
  %229 = load i32, ptr %228, align 4
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %229) #12
  store i32 3, ptr %100, align 4
  %231 = load i32, ptr %12, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %272, label %233

233:                                              ; preds = %225
  %234 = load ptr, ptr %63, align 4
  br label %235

235:                                              ; preds = %267, %233
  %236 = phi i32 [ 0, %233 ], [ %270, %267 ]
  %237 = phi i32 [ 100000000, %233 ], [ %269, %267 ]
  %238 = getelementptr %struct.dvb_ca_slot, ptr %234, i32 %236
  %239 = load i32, ptr %238, align 4
  switch i32 %239, label %240 [
    i32 2, label %250
    i32 3, label %245
    i32 1, label %267
    i32 4, label %267
    i32 5, label %267
    i32 6, label %267
    i32 7, label %267
  ]

240:                                              ; preds = %235
  %241 = load i32, ptr %64, align 4
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  %244 = select i1 %243, i32 500, i32 6000
  br label %267

245:                                              ; preds = %235
  %246 = load i32, ptr %64, align 4
  %247 = and i32 %246, 1
  %248 = icmp eq i32 %247, 0
  %249 = select i1 %248, i32 10, i32 6000
  br label %267

250:                                              ; preds = %235
  %251 = load i32, ptr %64, align 4
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  %254 = select i1 %253, i32 10, i32 6000
  %255 = load i8, ptr %62, align 4
  %256 = and i8 %255, 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %250
  %259 = getelementptr %struct.dvb_ca_slot, ptr %234, i32 %236, i32 6
  %260 = load i8, ptr %259, align 1
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  %263 = and i32 %251, 4
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %262, i1 true, i1 %264
  %266 = select i1 %265, i32 10, i32 %254
  br label %267

267:                                              ; preds = %258, %250, %245, %240, %235, %235, %235, %235, %235
  %268 = phi i32 [ %244, %240 ], [ %249, %245 ], [ %254, %250 ], [ 10, %235 ], [ 10, %235 ], [ 10, %235 ], [ 10, %235 ], [ 10, %235 ], [ %266, %258 ]
  %269 = call i32 @llvm.smin.i32(i32 %268, i32 %237) #13
  %270 = add nuw i32 %236, 1
  %271 = icmp eq i32 %270, %231
  br i1 %271, label %272, label %235

272:                                              ; preds = %267, %225
  %273 = phi i32 [ 100000000, %225 ], [ %269, %267 ]
  store i32 %273, ptr %59, align 4
  br label %826

274:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(257) %6, i8 0, i32 257, i1 false) #13, !annotation !16
  %275 = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %276 = icmp sgt i32 %275, -1
  %277 = load i32, ptr %5, align 4
  %278 = icmp eq i32 %277, 29
  %279 = select i1 %276, i1 %278, i1 false
  br i1 %279, label %280, label %459

280:                                              ; preds = %274
  %281 = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %282 = icmp sgt i32 %281, -1
  %283 = load i32, ptr %5, align 4
  %284 = icmp eq i32 %283, 28
  %285 = select i1 %282, i1 %284, i1 false
  br i1 %285, label %286, label %459

286:                                              ; preds = %280
  %287 = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %288 = icmp sgt i32 %287, -1
  %289 = load i32, ptr %5, align 4
  %290 = icmp eq i32 %289, 21
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %459

292:                                              ; preds = %286
  %293 = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %459, label %295

295:                                              ; preds = %292
  %296 = load i32, ptr %5, align 4
  %297 = icmp eq i32 %296, 32
  %298 = load i32, ptr %4, align 4
  %299 = icmp eq i32 %298, 4
  %300 = select i1 %297, i1 %299, i1 false
  br i1 %300, label %301, label %459

301:                                              ; preds = %295
  %302 = load i8, ptr %68, align 1
  %303 = zext i8 %302 to i32
  %304 = shl nuw nsw i32 %303, 8
  %305 = load i8, ptr %6, align 1
  %306 = zext i8 %305 to i32
  %307 = or i32 %304, %306
  %308 = load i8, ptr %69, align 1
  %309 = zext i8 %308 to i32
  %310 = shl nuw nsw i32 %309, 8
  %311 = load i8, ptr %70, align 1
  %312 = zext i8 %311 to i32
  %313 = or i32 %310, %312
  %314 = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %315 = icmp sgt i32 %314, -1
  %316 = load i32, ptr %5, align 4
  %317 = icmp eq i32 %316, 26
  %318 = select i1 %315, i1 %317, i1 false
  br i1 %318, label %319, label %459

319:                                              ; preds = %301
  %320 = load i32, ptr %4, align 4
  %321 = icmp slt i32 %320, 3
  br i1 %321, label %459, label %322

322:                                              ; preds = %319
  %323 = load i8, ptr %6, align 1
  %324 = and i8 %323, 3
  %325 = add nuw nsw i8 %324, 17
  %326 = zext i8 %325 to i32
  %327 = icmp ult i32 %320, %326
  br i1 %327, label %459, label %328

328:                                              ; preds = %322
  %329 = load ptr, ptr %63, align 4
  %330 = getelementptr %struct.dvb_ca_slot, ptr %329, i32 %98, i32 4
  store i32 0, ptr %330, align 4
  %331 = load i8, ptr %74, align 1
  %332 = zext i8 %331 to i32
  store i32 %332, ptr %330, align 4
  %333 = icmp eq i8 %324, 0
  br i1 %333, label %351, label %334

334:                                              ; preds = %328
  %335 = load i8, ptr %75, align 1
  %336 = zext i8 %335 to i32
  %337 = shl nuw nsw i32 %336, 8
  %338 = or i32 %337, %332
  store i32 %338, ptr %330, align 4
  %339 = icmp eq i8 %324, 1
  br i1 %339, label %351, label %340

340:                                              ; preds = %334
  %341 = load i8, ptr %76, align 1
  %342 = zext i8 %341 to i32
  %343 = shl nuw nsw i32 %342, 16
  %344 = or i32 %343, %338
  store i32 %344, ptr %330, align 4
  %345 = icmp eq i8 %324, 2
  br i1 %345, label %351, label %346

346:                                              ; preds = %340
  %347 = load i8, ptr %77, align 1
  %348 = zext i8 %347 to i32
  %349 = shl nuw i32 %348, 24
  %350 = or i32 %349, %344
  store i32 %350, ptr %330, align 4
  br label %351

351:                                              ; preds = %346, %340, %334, %328
  %352 = icmp slt i32 %320, 8
  br i1 %352, label %459, label %353

353:                                              ; preds = %351
  %354 = add nsw i32 %320, -8
  br label %358

355:                                              ; preds = %358
  %356 = add i32 %359, 1
  %357 = icmp sgt i32 %356, %354
  br i1 %357, label %459, label %358

358:                                              ; preds = %355, %353
  %359 = phi i32 [ %356, %355 ], [ 0, %353 ]
  %360 = getelementptr i8, ptr %6, i32 %359
  %361 = call i32 @strncmp(ptr noundef %360, ptr noundef nonnull dereferenceable(9) @.str.25, i32 noundef 8) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %355

363:                                              ; preds = %358
  %364 = icmp eq ptr %360, null
  %365 = ptrtoint ptr %360 to i32
  %366 = add i32 %72, %365
  %367 = icmp slt i32 %320, %366
  %368 = select i1 %364, i1 true, i1 %367
  br i1 %368, label %459, label %369

369:                                              ; preds = %363
  %370 = getelementptr i8, ptr %360, i32 8
  %371 = call i32 @strncmp(ptr noundef %370, ptr noundef nonnull dereferenceable(5) @.str.26, i32 noundef 4) #13
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %369
  %374 = load i32, ptr %3, align 4
  %375 = icmp slt i32 %374, 4096
  br i1 %375, label %376, label %459

376:                                              ; preds = %373
  %377 = getelementptr %struct.dvb_ca_slot, ptr %329, i32 %98, i32 5
  br label %395

378:                                              ; preds = %369
  %379 = load ptr, ptr %67, align 4
  %380 = getelementptr inbounds %struct.dvb_device, ptr %379, i32 0, i32 2
  %381 = load ptr, ptr %380, align 4
  %382 = load i32, ptr %381, align 4
  %383 = load i8, ptr %370, align 1
  %384 = zext i8 %383 to i32
  %385 = getelementptr i8, ptr %360, i32 9
  %386 = load i8, ptr %385, align 1
  %387 = zext i8 %386 to i32
  %388 = getelementptr i8, ptr %360, i32 10
  %389 = load i8, ptr %388, align 1
  %390 = zext i8 %389 to i32
  %391 = getelementptr i8, ptr %360, i32 11
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i32
  %394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %382, i32 noundef %384, i32 noundef %387, i32 noundef %390, i32 noundef %393) #12
  br label %459

395:                                              ; preds = %444, %376
  %396 = phi i32 [ 0, %376 ], [ %445, %444 ]
  %397 = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %459, label %399

399:                                              ; preds = %395
  %400 = load i32, ptr %5, align 4
  switch i32 %400, label %438 [
    i32 27, label %401
    i32 20, label %444
    i32 255, label %436
  ]

401:                                              ; preds = %399
  %402 = load i32, ptr %4, align 4
  %403 = icmp slt i32 %402, 30
  %404 = icmp ne i32 %396, 0
  %405 = select i1 %403, i1 true, i1 %404
  br i1 %405, label %444, label %406

406:                                              ; preds = %401
  %407 = load i8, ptr %6, align 1
  %408 = and i8 %407, 63
  store i8 %408, ptr %377, align 4
  %409 = add nsw i32 %402, -8
  br label %413

410:                                              ; preds = %413
  %411 = add i32 %414, 1
  %412 = icmp sgt i32 %411, %409
  br i1 %412, label %444, label %413

413:                                              ; preds = %410, %406
  %414 = phi i32 [ %411, %410 ], [ 0, %406 ]
  %415 = getelementptr i8, ptr %6, i32 %414
  %416 = call i32 @strncmp(ptr noundef %415, ptr noundef nonnull dereferenceable(9) @.str.28, i32 noundef 8) #13
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %410

418:                                              ; preds = %413
  %419 = icmp eq ptr %415, null
  br i1 %419, label %444, label %420

420:                                              ; preds = %418
  %421 = icmp slt i32 %402, 13
  br i1 %421, label %432, label %422

422:                                              ; preds = %420
  %423 = add nsw i32 %402, -13
  br label %427

424:                                              ; preds = %427
  %425 = add i32 %428, 1
  %426 = icmp sgt i32 %425, %423
  br i1 %426, label %432, label %427

427:                                              ; preds = %424, %422
  %428 = phi i32 [ %425, %424 ], [ 0, %422 ]
  %429 = getelementptr i8, ptr %6, i32 %428
  %430 = call i32 @strncmp(ptr noundef %429, ptr noundef nonnull dereferenceable(14) @.str.29, i32 noundef 13) #13
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %424

432:                                              ; preds = %427, %424, %420
  %433 = phi ptr [ null, %420 ], [ null, %424 ], [ %429, %427 ]
  %434 = icmp ne ptr %433, null
  %435 = zext i1 %434 to i32
  br label %444

436:                                              ; preds = %399
  %437 = load i32, ptr %3, align 4
  br label %448

438:                                              ; preds = %399
  %439 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %438
  %442 = load i32, ptr %4, align 4
  %443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dvb_ca_en50221_parse_attributes, i32 noundef %400, i32 noundef %442) #12
  br label %444

444:                                              ; preds = %441, %438, %432, %418, %410, %401, %399
  %445 = phi i32 [ %396, %441 ], [ %396, %438 ], [ %396, %399 ], [ %396, %401 ], [ 0, %418 ], [ %435, %432 ], [ 0, %410 ]
  %446 = load i32, ptr %3, align 4
  %447 = icmp slt i32 %446, 4096
  br i1 %447, label %395, label %448

448:                                              ; preds = %444, %436
  %449 = phi i32 [ %396, %436 ], [ %445, %444 ]
  %450 = phi i32 [ %437, %436 ], [ %446, %444 ]
  %451 = icmp slt i32 %450, 4097
  %452 = icmp ne i32 %449, 0
  %453 = select i1 %451, i1 %452, i1 false
  br i1 %453, label %454, label %459

454:                                              ; preds = %448
  %455 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %511

457:                                              ; preds = %454
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %458 = load ptr, ptr %63, align 4
  br label %521

459:                                              ; preds = %448, %395, %378, %373, %363, %355, %351, %322, %319, %301, %295, %292, %286, %280, %274
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %460 = call fastcc i32 @dvb_ca_en50221_poll_cam_gone(ptr noundef %0, i32 noundef %98) #13
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %826

462:                                              ; preds = %459
  %463 = load ptr, ptr %67, align 4
  %464 = getelementptr inbounds %struct.dvb_device, ptr %463, i32 0, i32 2
  %465 = load ptr, ptr %464, align 4
  %466 = load i32, ptr %465, align 4
  %467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %466) #12
  store i32 3, ptr %100, align 4
  %468 = load i32, ptr %12, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %509, label %470

470:                                              ; preds = %462
  %471 = load ptr, ptr %63, align 4
  br label %472

472:                                              ; preds = %504, %470
  %473 = phi i32 [ 0, %470 ], [ %507, %504 ]
  %474 = phi i32 [ 100000000, %470 ], [ %506, %504 ]
  %475 = getelementptr %struct.dvb_ca_slot, ptr %471, i32 %473
  %476 = load i32, ptr %475, align 4
  switch i32 %476, label %477 [
    i32 2, label %487
    i32 3, label %482
    i32 1, label %504
    i32 4, label %504
    i32 5, label %504
    i32 6, label %504
    i32 7, label %504
  ]

477:                                              ; preds = %472
  %478 = load i32, ptr %64, align 4
  %479 = and i32 %478, 1
  %480 = icmp eq i32 %479, 0
  %481 = select i1 %480, i32 500, i32 6000
  br label %504

482:                                              ; preds = %472
  %483 = load i32, ptr %64, align 4
  %484 = and i32 %483, 1
  %485 = icmp eq i32 %484, 0
  %486 = select i1 %485, i32 10, i32 6000
  br label %504

487:                                              ; preds = %472
  %488 = load i32, ptr %64, align 4
  %489 = and i32 %488, 1
  %490 = icmp eq i32 %489, 0
  %491 = select i1 %490, i32 10, i32 6000
  %492 = load i8, ptr %62, align 4
  %493 = and i8 %492, 1
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %504, label %495

495:                                              ; preds = %487
  %496 = getelementptr %struct.dvb_ca_slot, ptr %471, i32 %473, i32 6
  %497 = load i8, ptr %496, align 1
  %498 = and i8 %497, 1
  %499 = icmp eq i8 %498, 0
  %500 = and i32 %488, 4
  %501 = icmp eq i32 %500, 0
  %502 = select i1 %499, i1 true, i1 %501
  %503 = select i1 %502, i32 10, i32 %491
  br label %504

504:                                              ; preds = %495, %487, %482, %477, %472, %472, %472, %472, %472
  %505 = phi i32 [ %481, %477 ], [ %486, %482 ], [ %491, %487 ], [ 10, %472 ], [ 10, %472 ], [ 10, %472 ], [ 10, %472 ], [ 10, %472 ], [ %503, %495 ]
  %506 = call i32 @llvm.smin.i32(i32 %505, i32 %474) #13
  %507 = add nuw i32 %473, 1
  %508 = icmp eq i32 %507, %468
  br i1 %508, label %509, label %472

509:                                              ; preds = %504, %462
  %510 = phi i32 [ 100000000, %462 ], [ %506, %504 ]
  store i32 %510, ptr %59, align 4
  br label %826

511:                                              ; preds = %454
  %512 = load i32, ptr %330, align 4
  %513 = load i8, ptr %377, align 4
  %514 = zext i8 %513 to i32
  %515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.dvb_ca_en50221_parse_attributes, i32 noundef %307, i32 noundef %313, i32 noundef %512, i32 noundef %514) #12
  %516 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %517 = load ptr, ptr %63, align 4
  %518 = icmp eq i32 %516, 0
  br i1 %518, label %521, label %519

519:                                              ; preds = %511
  %520 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_set_configoption, ptr noundef nonnull @__func__.dvb_ca_en50221_set_configoption) #12
  br label %521

521:                                              ; preds = %519, %511, %457
  %522 = phi ptr [ %458, %457 ], [ %517, %519 ], [ %517, %511 ]
  %523 = load ptr, ptr %65, align 4
  %524 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %523, i32 0, i32 2
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr %struct.dvb_ca_slot, ptr %522, i32 %98, i32 4
  %527 = load i32, ptr %526, align 4
  %528 = getelementptr %struct.dvb_ca_slot, ptr %522, i32 %98, i32 5
  %529 = load i8, ptr %528, align 4
  %530 = call i32 %525(ptr noundef %523, i32 noundef %98, i32 noundef %527, i8 noundef zeroext %529) #13
  %531 = load ptr, ptr %65, align 4
  %532 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %531, i32 0, i32 1
  %533 = load ptr, ptr %532, align 4
  %534 = load i32, ptr %526, align 4
  %535 = call i32 %533(ptr noundef %531, i32 noundef %98, i32 noundef %534) #13
  %536 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %543, label %538

538:                                              ; preds = %521
  %539 = load i8, ptr %528, align 4
  %540 = zext i8 %539 to i32
  %541 = and i32 %535, 63
  %542 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dvb_ca_en50221_set_configoption, i32 noundef %540, i32 noundef %541) #12
  br label %543

543:                                              ; preds = %538, %521
  %544 = load ptr, ptr %65, align 4
  %545 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %544, i32 0, i32 4
  %546 = load ptr, ptr %545, align 4
  %547 = call i32 %546(ptr noundef %544, i32 noundef %98, i8 noundef zeroext 1, i8 noundef zeroext 8) #13
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %543
  %550 = load ptr, ptr %67, align 4
  %551 = getelementptr inbounds %struct.dvb_device, ptr %550, i32 0, i32 2
  %552 = load ptr, ptr %551, align 4
  %553 = load i32, ptr %552, align 4
  %554 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %553) #12
  store i32 3, ptr %100, align 4
  call fastcc void @dvb_ca_en50221_thread_update_delay(ptr noundef %0) #13
  br label %826

555:                                              ; preds = %543
  %556 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %555
  %559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_state_machine) #12
  br label %560

560:                                              ; preds = %558, %555
  %561 = load volatile i32, ptr @jiffies, align 64
  %562 = add i32 %561, 1000
  %563 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 9
  store i32 %562, ptr %563, align 4
  store i32 6, ptr %100, align 4
  %564 = load i8, ptr %62, align 4
  %565 = or i8 %564, 2
  store i8 %565, ptr %62, align 4
  br label %826

566:                                              ; preds = %209
  %567 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 9
  %568 = load i32, ptr %567, align 4
  %569 = load volatile i32, ptr @jiffies, align 64
  %570 = sub i32 %568, %569
  %571 = icmp slt i32 %570, 0
  br i1 %571, label %572, label %621

572:                                              ; preds = %566
  %573 = load ptr, ptr %67, align 4
  %574 = getelementptr inbounds %struct.dvb_device, ptr %573, i32 0, i32 2
  %575 = load ptr, ptr %574, align 4
  %576 = load i32, ptr %575, align 4
  %577 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %576) #12
  store i32 3, ptr %100, align 4
  %578 = load i32, ptr %12, align 4
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %619, label %580

580:                                              ; preds = %572
  %581 = load ptr, ptr %63, align 4
  br label %582

582:                                              ; preds = %614, %580
  %583 = phi i32 [ 0, %580 ], [ %617, %614 ]
  %584 = phi i32 [ 100000000, %580 ], [ %616, %614 ]
  %585 = getelementptr %struct.dvb_ca_slot, ptr %581, i32 %583
  %586 = load i32, ptr %585, align 4
  switch i32 %586, label %587 [
    i32 2, label %597
    i32 3, label %592
    i32 1, label %614
    i32 4, label %614
    i32 5, label %614
    i32 6, label %614
    i32 7, label %614
  ]

587:                                              ; preds = %582
  %588 = load i32, ptr %64, align 4
  %589 = and i32 %588, 1
  %590 = icmp eq i32 %589, 0
  %591 = select i1 %590, i32 500, i32 6000
  br label %614

592:                                              ; preds = %582
  %593 = load i32, ptr %64, align 4
  %594 = and i32 %593, 1
  %595 = icmp eq i32 %594, 0
  %596 = select i1 %595, i32 10, i32 6000
  br label %614

597:                                              ; preds = %582
  %598 = load i32, ptr %64, align 4
  %599 = and i32 %598, 1
  %600 = icmp eq i32 %599, 0
  %601 = select i1 %600, i32 10, i32 6000
  %602 = load i8, ptr %62, align 4
  %603 = and i8 %602, 1
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %614, label %605

605:                                              ; preds = %597
  %606 = getelementptr %struct.dvb_ca_slot, ptr %581, i32 %583, i32 6
  %607 = load i8, ptr %606, align 1
  %608 = and i8 %607, 1
  %609 = icmp eq i8 %608, 0
  %610 = and i32 %598, 4
  %611 = icmp eq i32 %610, 0
  %612 = select i1 %609, i1 true, i1 %611
  %613 = select i1 %612, i32 10, i32 %601
  br label %614

614:                                              ; preds = %605, %597, %592, %587, %582, %582, %582, %582, %582
  %615 = phi i32 [ %591, %587 ], [ %596, %592 ], [ %601, %597 ], [ 10, %582 ], [ 10, %582 ], [ 10, %582 ], [ 10, %582 ], [ 10, %582 ], [ %613, %605 ]
  %616 = call i32 @llvm.smin.i32(i32 %615, i32 %584) #13
  %617 = add nuw i32 %583, 1
  %618 = icmp eq i32 %617, %578
  br i1 %618, label %619, label %582

619:                                              ; preds = %614, %572
  %620 = phi i32 [ 100000000, %572 ], [ %616, %614 ]
  store i32 %620, ptr %59, align 4
  br label %826

621:                                              ; preds = %566
  %622 = load ptr, ptr %65, align 4
  %623 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %622, i32 0, i32 3
  %624 = load ptr, ptr %623, align 4
  %625 = call i32 %624(ptr noundef %622, i32 noundef %98, i8 noundef zeroext 1) #13
  %626 = and i32 %625, 64
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %826, label %628

628:                                              ; preds = %621
  store i32 7, ptr %100, align 4
  %629 = load i8, ptr %62, align 4
  %630 = or i8 %629, 2
  store i8 %630, ptr %62, align 4
  br label %826

631:                                              ; preds = %209
  %632 = load ptr, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 0, ptr %2, align 2, !annotation !16
  %633 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %637, label %635

635:                                              ; preds = %631
  %636 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_link_init, ptr noundef nonnull @__func__.dvb_ca_en50221_link_init) #12
  br label %637

637:                                              ; preds = %635, %631
  %638 = getelementptr %struct.dvb_ca_slot, ptr %632, i32 %98, i32 6
  %639 = load i8, ptr %638, align 1
  %640 = and i8 %639, -2
  store i8 %640, ptr %638, align 1
  %641 = getelementptr %struct.dvb_ca_slot, ptr %632, i32 %98, i32 7
  store i32 2, ptr %641, align 4
  %642 = load ptr, ptr %65, align 4
  %643 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %642, i32 0, i32 4
  %644 = load ptr, ptr %643, align 4
  %645 = call i32 %644(ptr noundef %642, i32 noundef %98, i8 noundef zeroext 1, i8 noundef zeroext -124) #13
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %686

647:                                              ; preds = %637
  %648 = call fastcc i32 @dvb_ca_en50221_wait_if_status(ptr noundef %0, i32 noundef %98, i8 noundef zeroext -128, i32 noundef 100) #13
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %686

650:                                              ; preds = %647
  %651 = call fastcc i32 @dvb_ca_en50221_read_data(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %2, i32 noundef 2) #13
  %652 = icmp eq i32 %651, 2
  br i1 %652, label %653, label %686

653:                                              ; preds = %650
  %654 = load ptr, ptr %65, align 4
  %655 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %654, i32 0, i32 4
  %656 = load ptr, ptr %655, align 4
  %657 = call i32 %656(ptr noundef %654, i32 noundef %98, i8 noundef zeroext 1, i8 noundef zeroext -128) #13
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %686

659:                                              ; preds = %653
  %660 = load i8, ptr %2, align 2
  %661 = zext i8 %660 to i32
  %662 = shl nuw nsw i32 %661, 8
  %663 = load i8, ptr %73, align 1
  %664 = zext i8 %663 to i32
  %665 = or i32 %662, %664
  %666 = call i32 @llvm.umin.i32(i32 %665, i32 512) #13
  store i32 %666, ptr %641, align 4
  %667 = lshr i32 %666, 8
  %668 = trunc i32 %667 to i8
  store i8 %668, ptr %2, align 2
  %669 = trunc i32 %666 to i8
  store i8 %669, ptr %73, align 1
  %670 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %674, label %672

672:                                              ; preds = %659
  %673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.dvb_ca_en50221_link_init, i32 noundef %666) #12
  br label %674

674:                                              ; preds = %672, %659
  %675 = load ptr, ptr %65, align 4
  %676 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %675, i32 0, i32 4
  %677 = load ptr, ptr %676, align 4
  %678 = call i32 %677(ptr noundef %675, i32 noundef %98, i8 noundef zeroext 1, i8 noundef zeroext -126) #13
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %686

680:                                              ; preds = %674
  %681 = call fastcc i32 @dvb_ca_en50221_wait_if_status(ptr noundef %0, i32 noundef %98, i8 noundef zeroext 64, i32 noundef 10) #13
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %683, label %686

683:                                              ; preds = %680
  %684 = call fastcc i32 @dvb_ca_en50221_write_data(ptr noundef %0, i32 noundef %98, ptr noundef nonnull %2, i32 noundef 2) #13
  %685 = icmp eq i32 %684, 2
  br i1 %685, label %687, label %686

686:                                              ; preds = %683, %680, %674, %653, %650, %647, %637
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  br label %693

687:                                              ; preds = %683
  %688 = load ptr, ptr %65, align 4
  %689 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %688, i32 0, i32 4
  %690 = load ptr, ptr %689, align 4
  %691 = call i32 %690(ptr noundef %688, i32 noundef %98, i8 noundef zeroext 1, i8 noundef zeroext -128) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %745, label %693

693:                                              ; preds = %687, %686
  %694 = call fastcc i32 @dvb_ca_en50221_poll_cam_gone(ptr noundef %0, i32 noundef %98) #13
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %826

696:                                              ; preds = %693
  %697 = load ptr, ptr %67, align 4
  %698 = getelementptr inbounds %struct.dvb_device, ptr %697, i32 0, i32 2
  %699 = load ptr, ptr %698, align 4
  %700 = load i32, ptr %699, align 4
  %701 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %700) #12
  store i32 1, ptr %100, align 4
  %702 = load i32, ptr %12, align 4
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %743, label %704

704:                                              ; preds = %696
  %705 = load ptr, ptr %63, align 4
  br label %706

706:                                              ; preds = %738, %704
  %707 = phi i32 [ 0, %704 ], [ %741, %738 ]
  %708 = phi i32 [ 100000000, %704 ], [ %740, %738 ]
  %709 = getelementptr %struct.dvb_ca_slot, ptr %705, i32 %707
  %710 = load i32, ptr %709, align 4
  switch i32 %710, label %711 [
    i32 2, label %721
    i32 3, label %716
    i32 1, label %738
    i32 4, label %738
    i32 5, label %738
    i32 6, label %738
    i32 7, label %738
  ]

711:                                              ; preds = %706
  %712 = load i32, ptr %64, align 4
  %713 = and i32 %712, 1
  %714 = icmp eq i32 %713, 0
  %715 = select i1 %714, i32 500, i32 6000
  br label %738

716:                                              ; preds = %706
  %717 = load i32, ptr %64, align 4
  %718 = and i32 %717, 1
  %719 = icmp eq i32 %718, 0
  %720 = select i1 %719, i32 10, i32 6000
  br label %738

721:                                              ; preds = %706
  %722 = load i32, ptr %64, align 4
  %723 = and i32 %722, 1
  %724 = icmp eq i32 %723, 0
  %725 = select i1 %724, i32 10, i32 6000
  %726 = load i8, ptr %62, align 4
  %727 = and i8 %726, 1
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %738, label %729

729:                                              ; preds = %721
  %730 = getelementptr %struct.dvb_ca_slot, ptr %705, i32 %707, i32 6
  %731 = load i8, ptr %730, align 1
  %732 = and i8 %731, 1
  %733 = icmp eq i8 %732, 0
  %734 = and i32 %722, 4
  %735 = icmp eq i32 %734, 0
  %736 = select i1 %733, i1 true, i1 %735
  %737 = select i1 %736, i32 10, i32 %725
  br label %738

738:                                              ; preds = %729, %721, %716, %711, %706, %706, %706, %706, %706
  %739 = phi i32 [ %715, %711 ], [ %720, %716 ], [ %725, %721 ], [ 10, %706 ], [ 10, %706 ], [ 10, %706 ], [ 10, %706 ], [ 10, %706 ], [ %737, %729 ]
  %740 = call i32 @llvm.smin.i32(i32 %739, i32 %708) #13
  %741 = add nuw i32 %707, 1
  %742 = icmp eq i32 %741, %702
  br i1 %742, label %743, label %706

743:                                              ; preds = %738, %696
  %744 = phi i32 [ 100000000, %696 ], [ %740, %738 ]
  store i32 %744, ptr %59, align 4
  br label %826

745:                                              ; preds = %687
  %746 = getelementptr %struct.dvb_ca_slot, ptr %99, i32 %98, i32 8
  %747 = load ptr, ptr %746, align 4
  %748 = icmp eq ptr %747, null
  br i1 %748, label %749, label %759

749:                                              ; preds = %745
  %750 = call noalias ptr @vmalloc(i32 noundef 65535) #15
  %751 = icmp eq ptr %750, null
  br i1 %751, label %752, label %758

752:                                              ; preds = %749
  %753 = load ptr, ptr %67, align 4
  %754 = getelementptr inbounds %struct.dvb_device, ptr %753, i32 0, i32 2
  %755 = load ptr, ptr %754, align 4
  %756 = load i32, ptr %755, align 4
  %757 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %756) #12
  store i32 3, ptr %100, align 4
  call fastcc void @dvb_ca_en50221_thread_update_delay(ptr noundef %0) #13
  br label %826

758:                                              ; preds = %749
  call void @dvb_ringbuffer_init(ptr noundef %746, ptr noundef nonnull %750, i32 noundef 65535) #13
  br label %759

759:                                              ; preds = %758, %745
  %760 = load ptr, ptr %65, align 4
  %761 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %760, i32 0, i32 9
  %762 = load ptr, ptr %761, align 4
  %763 = call i32 %762(ptr noundef %760, i32 noundef %98) #13
  store i32 2, ptr %100, align 4
  call fastcc void @dvb_ca_en50221_thread_update_delay(ptr noundef %0) #13
  %764 = load ptr, ptr %67, align 4
  %765 = getelementptr inbounds %struct.dvb_device, ptr %764, i32 0, i32 2
  %766 = load ptr, ptr %765, align 4
  %767 = load i32, ptr %766, align 4
  %768 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %767) #12
  br label %826

769:                                              ; preds = %209
  %770 = load i8, ptr %62, align 4
  %771 = and i8 %770, 1
  %772 = icmp eq i8 %771, 0
  br i1 %772, label %826, label %773

773:                                              ; preds = %820, %769
  %774 = phi i32 [ %821, %820 ], [ 0, %769 ]
  %775 = call fastcc i32 @dvb_ca_en50221_read_data(ptr noundef %0, i32 noundef %98, ptr noundef null, i32 noundef 0) #13
  %776 = icmp sgt i32 %775, 0
  br i1 %776, label %777, label %826

777:                                              ; preds = %773
  %778 = load i8, ptr %62, align 4
  %779 = and i8 %778, 1
  %780 = icmp eq i8 %779, 0
  br i1 %780, label %826, label %781

781:                                              ; preds = %777
  %782 = load ptr, ptr %63, align 4
  %783 = getelementptr %struct.dvb_ca_slot, ptr %782, i32 %98
  %784 = load i32, ptr %64, align 4
  %785 = and i32 %784, 1
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %813

787:                                              ; preds = %781
  %788 = load ptr, ptr %65, align 4
  %789 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %788, i32 0, i32 10
  %790 = load ptr, ptr %789, align 4
  %791 = zext i8 %779 to i32
  %792 = call i32 %790(ptr noundef %788, i32 noundef %98, i32 noundef %791) #13
  %793 = and i32 %792, 1
  %794 = icmp eq i32 %793, 0
  %795 = and i32 %792, 2
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %801

797:                                              ; preds = %787
  %798 = load i32, ptr %783, align 4
  %799 = icmp eq i32 %798, 0
  %800 = xor i1 %794, %799
  br i1 %800, label %801, label %807

801:                                              ; preds = %797, %787
  %802 = xor i1 %794, true
  %803 = zext i1 %802 to i32
  %804 = getelementptr %struct.dvb_ca_slot, ptr %782, i32 %98, i32 3
  store i32 %803, ptr %804, align 4
  %805 = getelementptr %struct.dvb_ca_slot, ptr %782, i32 %98, i32 2
  store volatile i32 1, ptr %805, align 4
  %806 = load i8, ptr %62, align 4
  br label %817

807:                                              ; preds = %797
  %808 = icmp ne i32 %798, 4
  %809 = and i32 %792, 4
  %810 = icmp eq i32 %809, 0
  %811 = select i1 %808, i1 true, i1 %810
  br i1 %811, label %820, label %812

812:                                              ; preds = %807
  store i32 5, ptr %783, align 4
  br label %820

813:                                              ; preds = %781
  %814 = getelementptr %struct.dvb_ca_slot, ptr %782, i32 %98, i32 2
  %815 = load volatile i32, ptr %814, align 4
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %820, label %817

817:                                              ; preds = %813, %801
  %818 = phi i8 [ %806, %801 ], [ %778, %813 ]
  %819 = or i8 %818, 2
  store i8 %819, ptr %62, align 4
  br label %826

820:                                              ; preds = %813, %812, %807
  %821 = add nuw nsw i32 %774, 1
  %822 = icmp eq i32 %821, 10
  br i1 %822, label %823, label %773

823:                                              ; preds = %820
  %824 = load i8, ptr %62, align 4
  %825 = or i8 %824, 2
  store i8 %825, ptr %62, align 4
  br label %826

826:                                              ; preds = %823, %817, %777, %773, %769, %759, %752, %743, %693, %628, %621, %619, %560, %549, %509, %459, %272, %219, %211, %209
  call void @mutex_unlock(ptr noundef %101) #13
  %827 = add nuw i32 %98, 1
  %828 = load i32, ptr %12, align 4
  %829 = icmp ult i32 %827, %828
  br i1 %829, label %97, label %78

830:                                              ; preds = %84, %78, %57
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_release, ptr noundef nonnull @__func__.dvb_ca_en50221_release) #12
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @kthread_stop(ptr noundef %10) #13
  %12 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  %18 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 6
  %19 = load i32, ptr @dvb_ca_en50221_debug, align 4
  br label %20

20:                                               ; preds = %38, %15
  %21 = phi i32 [ %19, %15 ], [ %39, %38 ]
  %22 = phi i32 [ 0, %15 ], [ %40, %38 ]
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown) #12
  br label %26

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef %22) #13
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr %struct.dvb_ca_slot, ptr %31, i32 %22
  store i32 0, ptr %32, align 4
  tail call void @__wake_up(ptr noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %33 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown, i32 noundef %22) #12
  %37 = load i32, ptr @dvb_ca_en50221_debug, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = phi i32 [ 0, %26 ], [ %37, %35 ]
  %40 = add nuw i32 %22, 1
  %41 = load i32, ptr %12, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %20, label %43

43:                                               ; preds = %38, %8
  %44 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void @dvb_remove_device(ptr noundef %45) #13
  tail call fastcc void @dvb_ca_private_put(ptr noundef %3)
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_remove_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_ca_private_put(ptr noundef %0) unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #13, !srcloc !18
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %27, label %7, !prof !12

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #13
  br label %27

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %9 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @dvb_free_device(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %21, %16 ]
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr %struct.dvb_ca_slot, ptr %18, i32 %17, i32 8
  %20 = load ptr, ptr %19, align 4
  tail call void @vfree(ptr noundef %20) #13
  %21 = add nuw i32 %17, 1
  %22 = load i32, ptr %11, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %16, label %24

24:                                               ; preds = %16, %8
  %25 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #13
  tail call void @kfree(ptr noundef %0) #13
  br label %27

27:                                               ; preds = %24, %7, %5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wait_queue_entry, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dvb_device, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !16
  %13 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_io_read, ptr noundef nonnull @__func__.dvb_ca_en50221_io_read) #12
  br label %17

17:                                               ; preds = %15, %4
  %18 = icmp ult i32 %2, 2
  br i1 %18, label %111, label %19

19:                                               ; preds = %17
  %20 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %12, ptr noundef nonnull %6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %111

27:                                               ; preds = %22
  %28 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %12, ptr noundef nonnull %6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false), !annotation !16
  call void @init_wait_entry(ptr noundef nonnull %8, i32 noundef 0) #13
  %31 = getelementptr inbounds %struct.dvb_ca_private, ptr %12, i32 0, i32 6
  %32 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %8, i32 noundef 1) #13
  %33 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %12, ptr noundef nonnull %6)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %38, %30
  %36 = phi i32 [ %39, %38 ], [ %32, %30 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  call void @schedule() #13
  %39 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %8, i32 noundef 1) #13
  %40 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %12, ptr noundef nonnull %6)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %35, label %42

42:                                               ; preds = %38, %30
  call void @finish_wait(ptr noundef %31, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #13
  br label %45

43:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #13
  %44 = icmp slt i32 %36, 0
  br i1 %44, label %111, label %45

45:                                               ; preds = %43, %42, %27, %19
  %46 = getelementptr inbounds %struct.dvb_ca_private, ptr %12, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %6, align 4
  %49 = getelementptr %struct.dvb_ca_slot, ptr %47, i32 %48, i32 8
  %50 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %49, i32 noundef -1, ptr noundef nonnull %7) #13
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  br label %61

54:                                               ; preds = %93, %45
  %55 = getelementptr inbounds %struct.dvb_ca_private, ptr %12, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dvb_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %58, align 4
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %59) #12
  br label %111

61:                                               ; preds = %93, %52
  %62 = phi i32 [ 2, %52 ], [ %95, %93 ]
  %63 = phi i32 [ %50, %52 ], [ %94, %93 ]
  %64 = phi i32 [ -1, %52 ], [ %69, %93 ]
  %65 = call i32 @dvb_ringbuffer_pkt_read(ptr noundef %49, i32 noundef %63, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 2) #13
  %66 = icmp eq i32 %64, -1
  %67 = load i8, ptr %5, align 2
  %68 = zext i8 %67 to i32
  %69 = select i1 %66, i32 %68, i32 %64
  %70 = icmp eq i32 %69, %68
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = icmp ult i32 %62, %2
  br i1 %72, label %73, label %88

73:                                               ; preds = %71
  %74 = load i32, ptr %7, align 4
  %75 = add i32 %74, -2
  %76 = add i32 %75, %62
  %77 = icmp ugt i32 %76, %2
  %78 = sub i32 %2, %62
  %79 = select i1 %77, i32 %78, i32 %75
  store i32 %79, ptr %7, align 4
  %80 = getelementptr i8, ptr %1, i32 %62
  %81 = call i32 @dvb_ringbuffer_pkt_read_user(ptr noundef %49, i32 noundef %63, i32 noundef 2, ptr noundef %80, i32 noundef %79) #13
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %111, label %83

83:                                               ; preds = %73
  %84 = load i32, ptr %7, align 4
  %85 = add i32 %84, %62
  br label %88

86:                                               ; preds = %61
  %87 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %49, i32 noundef %63, ptr noundef nonnull %7) #13
  br label %93

88:                                               ; preds = %83, %71
  %89 = phi i32 [ %85, %83 ], [ %62, %71 ]
  %90 = load i8, ptr %53, align 1
  %91 = icmp sgt i8 %90, -1
  %92 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %49, i32 noundef %63, ptr noundef nonnull %7) #13
  call void @dvb_ringbuffer_pkt_dispose(ptr noundef %49, i32 noundef %63) #13
  br i1 %91, label %97, label %93

93:                                               ; preds = %88, %86
  %94 = phi i32 [ %92, %88 ], [ %87, %86 ]
  %95 = phi i32 [ %89, %88 ], [ %62, %86 ]
  %96 = icmp eq i32 %94, -1
  br i1 %96, label %54, label %61

97:                                               ; preds = %88
  %98 = trunc i32 %48 to i8
  store i8 %98, ptr %5, align 2
  store i8 %67, ptr %53, align 1
  %99 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 2, i32 -1090519040) #16, !srcloc !20
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = tail call ptr @llvm.thread.pointer() #13
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %105 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %104) #17, !srcloc !21
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %108 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 %89, i32 -14
  br label %111

111:                                              ; preds = %102, %97, %73, %54, %43, %22, %17
  %112 = phi i32 [ -22, %17 ], [ -11, %22 ], [ -5, %54 ], [ %36, %43 ], [ -14, %97 ], [ %110, %102 ], [ %81, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [512 x i8], align 1
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dvb_device, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #13
  %12 = getelementptr inbounds i8, ptr %7, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(512) %12, i8 0, i32 510, i1 false), !annotation !16
  %13 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_io_write, ptr noundef nonnull @__func__.dvb_ca_en50221_io_write) #12
  br label %17

17:                                               ; preds = %15, %4
  %18 = icmp ult i32 %2, 2
  br i1 %18, label %126, label %19

19:                                               ; preds = %17
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 1, i32 -1090519040) #16, !srcloc !24
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31, !prof !12

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #13
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #17, !srcloc !21
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #13, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %29 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !12

31:                                               ; preds = %23, %19
  %32 = phi i32 [ %29, %23 ], [ 1, %19 ]
  %33 = sub i32 1, %32
  %34 = getelementptr i8, ptr %5, i32 %33
  call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %32, i1 false) #13
  br label %126

35:                                               ; preds = %23
  %36 = getelementptr i8, ptr %1, i32 1
  %37 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 1, i32 -1090519040) #16, !srcloc !24
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46, !prof !12

40:                                               ; preds = %35
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #17, !srcloc !21
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %44 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %36, i32 noundef 1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !12

46:                                               ; preds = %40, %35
  %47 = phi i32 [ %44, %40 ], [ 1, %35 ]
  %48 = sub i32 1, %47
  %49 = getelementptr i8, ptr %6, i32 %48
  call void @llvm.memset.p0.i32(ptr align 1 %49, i8 0, i32 %47, i1 false) #13
  br label %126

50:                                               ; preds = %40
  %51 = getelementptr i8, ptr %1, i32 2
  %52 = add i32 %2, -2
  %53 = load i8, ptr %5, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.dvb_ca_private, ptr %11, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, %54
  br i1 %57, label %58, label %126

58:                                               ; preds = %50
  %59 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %54, i32 %56) #13, !srcloc !25
  %60 = trunc i32 %59 to i8
  %61 = and i8 %53, %60
  store i8 %61, ptr %5, align 1
  %62 = getelementptr inbounds %struct.dvb_ca_private, ptr %11, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = zext i8 %61 to i32
  %65 = getelementptr %struct.dvb_ca_slot, ptr %63, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %126

68:                                               ; preds = %58
  %69 = icmp eq i32 %52, 0
  br i1 %69, label %126, label %70

70:                                               ; preds = %68
  %71 = getelementptr %struct.dvb_ca_slot, ptr %63, i32 %64, i32 7
  %72 = getelementptr inbounds [512 x i8], ptr %7, i32 0, i32 1
  %73 = getelementptr inbounds i8, ptr %7, i32 2
  %74 = getelementptr %struct.dvb_ca_slot, ptr %63, i32 %64, i32 1
  br label %76

75:                                               ; preds = %115
  br i1 %87, label %76, label %126

76:                                               ; preds = %75, %70
  %77 = phi i32 [ 0, %70 ], [ %86, %75 ]
  %78 = load i32, ptr %71, align 4
  %79 = add i32 %78, -2
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %76
  %82 = call i32 @llvm.smin.i32(i32 %79, i32 510)
  %83 = sub i32 %52, %77
  %84 = call i32 @llvm.umin.i32(i32 %83, i32 %82)
  %85 = load i8, ptr %6, align 1
  store i8 %85, ptr %7, align 1
  %86 = add i32 %84, %77
  %87 = icmp ult i32 %86, %52
  %88 = select i1 %87, i8 -128, i8 0
  store i8 %88, ptr %72, align 1
  %89 = getelementptr i8, ptr %51, i32 %77
  %90 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %89, i32 %84, i32 -1090519040) #16, !srcloc !24
  %91 = extractvalue { i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98, !prof !12

93:                                               ; preds = %81
  %94 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #17, !srcloc !21
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %97 = call i32 @arm_copy_from_user(ptr noundef %73, ptr noundef %89, i32 noundef %84) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  br label %98

98:                                               ; preds = %93, %81
  %99 = phi i32 [ %97, %93 ], [ %84, %81 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101, !prof !12

101:                                              ; preds = %98
  %102 = sub i32 %84, %99
  %103 = getelementptr i8, ptr %73, i32 %102
  call void @llvm.memset.p0.i32(ptr align 1 %103, i8 0, i32 %99, i1 false) #13
  br label %126

104:                                              ; preds = %98
  %105 = load volatile i32, ptr @jiffies, align 64
  %106 = add i32 %105, 50
  %107 = load volatile i32, ptr @jiffies, align 64
  %108 = sub i32 %106, %107
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %126

110:                                              ; preds = %104
  %111 = add nuw nsw i32 %84, 2
  br label %112

112:                                              ; preds = %122, %110
  %113 = load i32, ptr %65, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  call void @mutex_lock(ptr noundef %74) #13
  %116 = load i8, ptr %5, align 1
  %117 = zext i8 %116 to i32
  %118 = call fastcc i32 @dvb_ca_en50221_write_data(ptr noundef %11, i32 noundef %117, ptr noundef nonnull %7, i32 noundef %111)
  call void @mutex_unlock(ptr noundef %74) #13
  %119 = icmp eq i32 %118, %111
  br i1 %119, label %75, label %120

120:                                              ; preds = %115
  %121 = icmp eq i32 %118, -11
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #13
  %123 = load volatile i32, ptr @jiffies, align 64
  %124 = sub i32 %106, %123
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %112, label %126

126:                                              ; preds = %122, %120, %112, %104, %101, %76, %75, %68, %58, %50, %46, %31, %17
  %127 = phi i32 [ -22, %17 ], [ -22, %50 ], [ -22, %58 ], [ -14, %31 ], [ -14, %46 ], [ -14, %101 ], [ 2, %68 ], [ -5, %112 ], [ %118, %120 ], [ -5, %122 ], [ -5, %104 ], [ %2, %76 ], [ %2, %75 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %8 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_io_poll, ptr noundef nonnull @__func__.dvb_ca_en50221_io_poll) #12
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 6
  %14 = icmp eq ptr %1, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %1, align 4
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %13, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void %16(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %1) #13
  br label %21

21:                                               ; preds = %20, %15, %12
  %22 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %7, ptr noundef nonnull %3)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %7, ptr noundef nonnull %3)
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %27, %24 ], [ 1, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @dvb_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @dvb_ca_en50221_io_do_ioctl) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_io_open, ptr noundef nonnull @__func__.dvb_ca_en50221_io_open) #12
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #13
  br i1 %15, label %16, label %116

16:                                               ; preds = %11
  %17 = tail call i32 @dvb_generic_open(ptr noundef %0, ptr noundef %1) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 8
  %25 = load i8, ptr %24, align 4
  %26 = or i8 %25, 1
  store i8 %26, ptr %24, align 4
  br label %91

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 5
  br label %32

29:                                               ; preds = %16
  %30 = load ptr, ptr %12, align 4
  %31 = load ptr, ptr %30, align 4
  tail call void @module_put(ptr noundef %31) #13
  br label %116

32:                                               ; preds = %45, %27
  %33 = phi i32 [ %21, %27 ], [ %46, %45 ]
  %34 = phi i32 [ 0, %27 ], [ %47, %45 ]
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr %struct.dvb_ca_slot, ptr %35, i32 %34
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = getelementptr %struct.dvb_ca_slot, ptr %35, i32 %34, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  tail call void @dvb_ringbuffer_flush(ptr noundef %40) #13
  %44 = load i32, ptr %20, align 4
  br label %45

45:                                               ; preds = %43, %39, %32
  %46 = phi i32 [ %33, %39 ], [ %44, %43 ], [ %33, %32 ]
  %47 = add nuw i32 %34, 1
  %48 = icmp ult i32 %47, %46
  br i1 %48, label %32, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 8
  %51 = load i8, ptr %50, align 4
  %52 = or i8 %51, 1
  store i8 %52, ptr %50, align 4
  %53 = icmp eq i32 %46, 0
  br i1 %53, label %91, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 3
  br label %58

58:                                               ; preds = %86, %54
  %59 = phi i32 [ 0, %54 ], [ %89, %86 ]
  %60 = phi i32 [ 100000000, %54 ], [ %88, %86 ]
  %61 = getelementptr %struct.dvb_ca_slot, ptr %56, i32 %59
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %63 [
    i32 2, label %73
    i32 3, label %68
    i32 1, label %86
    i32 4, label %86
    i32 5, label %86
    i32 6, label %86
    i32 7, label %86
  ]

63:                                               ; preds = %58
  %64 = load i32, ptr %57, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 500, i32 6000
  br label %86

68:                                               ; preds = %58
  %69 = load i32, ptr %57, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 10, i32 6000
  br label %86

73:                                               ; preds = %58
  %74 = load i32, ptr %57, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr %struct.dvb_ca_slot, ptr %56, i32 %59, i32 6
  %78 = load i8, ptr %77, align 1
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  %81 = and i32 %74, 4
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %80, i1 true, i1 %82
  %84 = select i1 %83, i1 true, i1 %76
  %85 = select i1 %84, i32 10, i32 6000
  br label %86

86:                                               ; preds = %73, %68, %63, %58, %58, %58, %58, %58
  %87 = phi i32 [ %67, %63 ], [ %72, %68 ], [ 10, %58 ], [ 10, %58 ], [ 10, %58 ], [ 10, %58 ], [ 10, %58 ], [ %85, %73 ]
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 %60) #13
  %89 = add nuw i32 %59, 1
  %90 = icmp eq i32 %89, %46
  br i1 %90, label %91, label %58

91:                                               ; preds = %86, %49, %23
  %92 = phi i8 [ %52, %49 ], [ %26, %23 ], [ %52, %86 ]
  %93 = phi ptr [ %50, %49 ], [ %24, %23 ], [ %50, %86 ]
  %94 = phi i32 [ 100000000, %49 ], [ 100000000, %23 ], [ %88, %86 ]
  %95 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 9
  store i32 %94, ptr %95, align 4
  %96 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup) #12
  %100 = load i8, ptr %93, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi i8 [ %92, %91 ], [ %100, %98 ]
  %103 = or i8 %102, 2
  store i8 %103, ptr %93, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %104 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 @wake_up_process(ptr noundef %105) #13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #13, !srcloc !8
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #13, !srcloc !26
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110, !prof !11

110:                                              ; preds = %101
  %111 = add i32 %108, 1
  %112 = or i32 %111, %108
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %116, label %114, !prof !12

114:                                              ; preds = %110, %101
  %115 = phi i32 [ 2, %101 ], [ 1, %110 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %115) #13
  br label %116

116:                                              ; preds = %114, %110, %29, %11
  %117 = phi i32 [ %17, %29 ], [ -5, %11 ], [ 0, %110 ], [ 0, %114 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_io_release, ptr noundef nonnull @__func__.dvb_ca_en50221_io_release) #12
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 8
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, -2
  store i8 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 3
  br label %22

22:                                               ; preds = %35, %18
  %23 = phi i32 [ 0, %18 ], [ %38, %35 ]
  %24 = phi i32 [ 100000000, %18 ], [ %37, %35 ]
  %25 = getelementptr %struct.dvb_ca_slot, ptr %20, i32 %23
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %29 [
    i32 2, label %28
    i32 3, label %27
    i32 1, label %35
    i32 4, label %35
    i32 5, label %35
    i32 6, label %35
    i32 7, label %35
  ]

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %27, %22
  %30 = phi i32 [ 10, %28 ], [ 10, %27 ], [ 500, %22 ]
  %31 = load i32, ptr %21, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %30, i32 6000
  br label %35

35:                                               ; preds = %29, %22, %22, %22, %22, %22
  %36 = phi i32 [ 10, %22 ], [ 10, %22 ], [ 10, %22 ], [ 10, %22 ], [ 10, %22 ], [ %34, %29 ]
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %24) #13
  %38 = add nuw i32 %23, 1
  %39 = icmp eq i32 %38, %16
  br i1 %39, label %40, label %22

40:                                               ; preds = %35, %11
  %41 = phi i32 [ 100000000, %11 ], [ %37, %35 ]
  %42 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 9
  store i32 %41, ptr %42, align 4
  %43 = tail call i32 @dvb_generic_release(ptr noundef %0, ptr noundef %1) #13
  %44 = getelementptr inbounds %struct.dvb_ca_private, ptr %6, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  tail call void @module_put(ptr noundef %46) #13
  tail call fastcc void @dvb_ca_private_put(ptr noundef %6)
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_io_read_condition(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !16
  %5 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %12 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  br label %13

13:                                               ; preds = %47, %10
  %14 = phi i32 [ -1, %10 ], [ %48, %47 ]
  %15 = phi i32 [ 0, %10 ], [ %52, %47 ]
  %16 = phi i32 [ %6, %10 ], [ %51, %47 ]
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr %struct.dvb_ca_slot, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %47

21:                                               ; preds = %13
  %22 = getelementptr %struct.dvb_ca_slot, ptr %17, i32 %16, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  %26 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %22, i32 noundef -1, ptr noundef nonnull %3) #13
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %47, label %28

28:                                               ; preds = %44, %25
  %29 = phi i32 [ %35, %44 ], [ %14, %25 ]
  %30 = phi i32 [ %45, %44 ], [ %26, %25 ]
  %31 = call i32 @dvb_ringbuffer_pkt_read(ptr noundef %22, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 2) #13
  %32 = icmp eq i32 %29, -1
  %33 = load i8, ptr %4, align 2
  %34 = zext i8 %33 to i32
  %35 = select i1 %32, i32 %34, i32 %29
  %36 = icmp eq i32 %35, %34
  %37 = load i8, ptr %12, align 1
  %38 = icmp sgt i8 %37, -1
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  store i32 %16, ptr %1, align 4
  %41 = add i32 %16, 1
  %42 = load i32, ptr %7, align 4
  %43 = urem i32 %41, %42
  br label %54

44:                                               ; preds = %28
  %45 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %22, i32 noundef %30, ptr noundef nonnull %3) #13
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %28

47:                                               ; preds = %44, %25, %13
  %48 = phi i32 [ %14, %13 ], [ %14, %25 ], [ %35, %44 ]
  %49 = add i32 %16, 1
  %50 = load i32, ptr %7, align 4
  %51 = urem i32 %49, %50
  %52 = add nuw i32 %15, 1
  %53 = icmp ult i32 %52, %50
  br i1 %53, label %13, label %54

54:                                               ; preds = %47, %40, %2
  %55 = phi i32 [ %6, %2 ], [ %43, %40 ], [ %51, %47 ]
  %56 = phi i32 [ 0, %2 ], [ 1, %40 ], [ 0, %47 ]
  store i32 %55, ptr %5, align 4
  br label %57

57:                                               ; preds = %54, %21
  %58 = phi i32 [ %56, %54 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_read_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_pkt_dispose(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_write_data(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.dvb_ca_slot, ptr %6, i32 %1
  %8 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_write_data, ptr noundef nonnull @__func__.dvb_ca_en50221_write_data) #12
  br label %12

12:                                               ; preds = %10, %4
  %13 = getelementptr %struct.dvb_ca_slot, ptr %6, i32 %1, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, %3
  br i1 %15, label %135, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 %20(ptr noundef %18, i32 noundef %1, ptr noundef %2, i32 noundef %3) #13
  br label %135

27:                                               ; preds = %22, %16
  %28 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %18, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %18, i32 noundef %1, i8 noundef zeroext 1) #13
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %135, label %32

32:                                               ; preds = %27
  %33 = and i32 %30, 129
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = and i32 %30, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %135, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup) #12
  br label %43

43:                                               ; preds = %41, %38
  %44 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 8
  %45 = load i8, ptr %44, align 4
  %46 = or i8 %45, 2
  store i8 %46, ptr %44, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %47 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @wake_up_process(ptr noundef %48) #13
  br label %135

50:                                               ; preds = %32
  %51 = load ptr, ptr %17, align 4
  %52 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %51, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %51, i32 noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -127) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %129

56:                                               ; preds = %50
  %57 = load ptr, ptr %17, align 4
  %58 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %57, i32 noundef %1, i8 noundef zeroext 1) #13
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %129, label %62

62:                                               ; preds = %56
  %63 = and i32 %60, 64
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %129, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %17, align 4
  %67 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %66, i32 noundef %1, i8 noundef zeroext 1) #13
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %129, label %71

71:                                               ; preds = %65
  %72 = and i32 %69, 129
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = and i32 %69, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %129, label %77

77:                                               ; preds = %74
  tail call fastcc void @dvb_ca_en50221_thread_wakeup(ptr noundef %0)
  br label %129

78:                                               ; preds = %71
  %79 = load ptr, ptr %17, align 4
  %80 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = lshr i32 %3, 8
  %83 = trunc i32 %82 to i8
  %84 = tail call i32 %81(ptr noundef %79, i32 noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %83) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %78
  %87 = load ptr, ptr %17, align 4
  %88 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = trunc i32 %3 to i8
  %91 = tail call i32 %89(ptr noundef %87, i32 noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %90) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %86
  %94 = icmp sgt i32 %3, 0
  br i1 %94, label %98, label %107

95:                                               ; preds = %98
  %96 = add nuw nsw i32 %99, 1
  %97 = icmp eq i32 %96, %3
  br i1 %97, label %107, label %98

98:                                               ; preds = %95, %93
  %99 = phi i32 [ %96, %95 ], [ 0, %93 ]
  %100 = load ptr, ptr %17, align 4
  %101 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %100, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %2, i32 %99
  %104 = load i8, ptr %103, align 1
  %105 = tail call i32 %102(ptr noundef %100, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %104) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %95, label %129

107:                                              ; preds = %95, %93
  %108 = load ptr, ptr %17, align 4
  %109 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %108, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 %110(ptr noundef %108, i32 noundef %1, i8 noundef zeroext 1) #13
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %107
  %114 = and i32 %111, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store i32 7, ptr %7, align 4
  br label %129

117:                                              ; preds = %113
  %118 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = load i8, ptr %2, align 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr i8, ptr %2, i32 1
  %124 = load i8, ptr %123, align 1
  %125 = xor i8 %124, -1
  %126 = lshr i8 %125, 7
  %127 = zext i8 %126 to i32
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dvb_ca_en50221_write_data, i32 noundef %1, i32 noundef %122, i32 noundef %127, i32 noundef %3) #12
  br label %129

129:                                              ; preds = %120, %117, %116, %107, %98, %86, %78, %77, %74, %65, %62, %56, %50
  %130 = phi i32 [ %54, %50 ], [ %60, %56 ], [ %69, %65 ], [ %84, %78 ], [ %91, %86 ], [ %111, %107 ], [ -5, %116 ], [ %3, %120 ], [ %3, %117 ], [ -11, %62 ], [ -11, %77 ], [ -11, %74 ], [ %105, %98 ]
  %131 = load ptr, ptr %17, align 4
  %132 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %131, i32 0, i32 4
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 %133(ptr noundef %131, i32 noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -128) #13
  br label %135

135:                                              ; preds = %129, %43, %35, %27, %25, %12
  %136 = phi i32 [ %26, %25 ], [ -22, %12 ], [ %30, %27 ], [ %130, %129 ], [ -11, %43 ], [ -11, %35 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_do_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_io_do_ioctl, ptr noundef nonnull @__func__.dvb_ca_en50221_io_do_ioctl) #12
  br label %12

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 11
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %12
  switch i32 %1, label %101 [
    i32 28544, label %17
    i32 -2146406527, label %72
    i32 -2146668670, label %78
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 5
  %23 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 1
  %24 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 6
  %25 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 3
  br label %26

26:                                               ; preds = %55, %21
  %27 = phi i32 [ 0, %21 ], [ %56, %55 ]
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr %struct.dvb_ca_slot, ptr %28, i32 %27
  %30 = getelementptr %struct.dvb_ca_slot, ptr %28, i32 %27, i32 1
  tail call void @mutex_lock(ptr noundef %30) #13
  %31 = load i32, ptr %29, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown) #12
  br label %38

38:                                               ; preds = %36, %33
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %39, i32 noundef %27) #13
  %43 = load ptr, ptr %22, align 4
  %44 = getelementptr %struct.dvb_ca_slot, ptr %43, i32 %27
  store i32 0, ptr %44, align 4
  tail call void @__wake_up(ptr noundef %24, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %45 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.dvb_ca_en50221_slot_shutdown, i32 noundef %27) #12
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i32, ptr %25, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %23, align 4
  tail call void @dvb_ca_en50221_camchange_irq(ptr noundef %54, i32 noundef %27, i32 noundef 1)
  br label %55

55:                                               ; preds = %53, %49, %26
  tail call void @mutex_unlock(ptr noundef %30) #13
  %56 = add nuw i32 %27, 1
  %57 = load i32, ptr %18, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %26, label %59

59:                                               ; preds = %55, %17
  %60 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 10
  store i32 0, ptr %60, align 4
  %61 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup, ptr noundef nonnull @__func__.dvb_ca_en50221_thread_wakeup) #12
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 8
  %67 = load i8, ptr %66, align 4
  %68 = or i8 %67, 2
  store i8 %68, ptr %66, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %69 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @wake_up_process(ptr noundef %70) #13
  br label %101

72:                                               ; preds = %16
  %73 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %2, align 4
  %75 = getelementptr inbounds %struct.ca_caps, ptr %2, i32 0, i32 1
  store i32 2, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ca_caps, ptr %2, i32 0, i32 2
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.ca_caps, ptr %2, i32 0, i32 3
  store i32 0, ptr %77, align 4
  br label %101

78:                                               ; preds = %16
  %79 = load i32, ptr %2, align 4
  %80 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = icmp uge i32 %79, %81
  %83 = icmp slt i32 %79, 0
  %84 = or i1 %83, %82
  br i1 %84, label %101, label %85

85:                                               ; preds = %78
  %86 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %79, i32 %81) #13, !srcloc !25
  %87 = and i32 %86, %79
  %88 = getelementptr inbounds %struct.ca_slot_info, ptr %2, i32 0, i32 1
  store i32 2, ptr %88, align 4
  %89 = getelementptr inbounds %struct.ca_slot_info, ptr %2, i32 0, i32 2
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dvb_ca_private, ptr %7, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.dvb_ca_slot, ptr %91, i32 %87
  %93 = load i32, ptr %92, align 4
  switch i32 %93, label %94 [
    i32 0, label %96
    i32 3, label %96
  ]

94:                                               ; preds = %85
  store i32 1, ptr %89, align 4
  %95 = load i32, ptr %92, align 4
  br label %96

96:                                               ; preds = %94, %85, %85
  %97 = phi i32 [ 2, %85 ], [ 2, %85 ], [ 3, %94 ]
  %98 = phi i32 [ %93, %85 ], [ %93, %85 ], [ %95, %94 ]
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 %97, ptr %89, align 4
  br label %101

101:                                              ; preds = %100, %96, %78, %72, %65, %16
  %102 = phi i32 [ 0, %72 ], [ 0, %65 ], [ -22, %16 ], [ -22, %78 ], [ 0, %100 ], [ 0, %96 ]
  tail call void @mutex_unlock(ptr noundef %13) #13
  br label %103

103:                                              ; preds = %101, %12
  %104 = phi i32 [ %102, %101 ], [ -512, %12 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_ca_en50221_thread_update_delay(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 8
  br label %10

10:                                               ; preds = %42, %5
  %11 = phi i32 [ 0, %5 ], [ %45, %42 ]
  %12 = phi i32 [ 100000000, %5 ], [ %44, %42 ]
  %13 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %11
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 2, label %25
    i32 3, label %20
    i32 1, label %42
    i32 4, label %42
    i32 5, label %42
    i32 6, label %42
    i32 7, label %42
  ]

15:                                               ; preds = %10
  %16 = load i32, ptr %8, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 500, i32 6000
  br label %42

20:                                               ; preds = %10
  %21 = load i32, ptr %8, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 10, i32 6000
  br label %42

25:                                               ; preds = %10
  %26 = load i32, ptr %8, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 10, i32 6000
  %30 = load i8, ptr %9, align 4
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %11, i32 6
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  %38 = and i32 %26, 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  %41 = select i1 %40, i32 10, i32 %29
  br label %42

42:                                               ; preds = %33, %25, %20, %15, %10, %10, %10, %10, %10
  %43 = phi i32 [ %19, %15 ], [ %24, %20 ], [ %29, %25 ], [ 10, %10 ], [ 10, %10 ], [ 10, %10 ], [ 10, %10 ], [ 10, %10 ], [ %41, %33 ]
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %12)
  %45 = add nuw i32 %11, 1
  %46 = icmp eq i32 %45, %3
  br i1 %46, label %47, label %10

47:                                               ; preds = %42, %1
  %48 = phi i32 [ 100000000, %1 ], [ %44, %42 ]
  %49 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 9
  store i32 %48, ptr %49, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_poll_cam_gone(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %67

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef %9, i32 noundef %1, i32 noundef 0) #13
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.dvb_ca_slot, ptr %19, i32 %1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 8
  br label %27

27:                                               ; preds = %59, %24
  %28 = phi i32 [ 0, %24 ], [ %62, %59 ]
  %29 = phi i32 [ 100000000, %24 ], [ %61, %59 ]
  %30 = getelementptr %struct.dvb_ca_slot, ptr %25, i32 %28
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %32 [
    i32 2, label %42
    i32 3, label %37
    i32 1, label %59
    i32 4, label %59
    i32 5, label %59
    i32 6, label %59
    i32 7, label %59
  ]

32:                                               ; preds = %27
  %33 = load i32, ptr %3, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 500, i32 6000
  br label %59

37:                                               ; preds = %27
  %38 = load i32, ptr %3, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 10, i32 6000
  br label %59

42:                                               ; preds = %27
  %43 = load i32, ptr %3, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 10, i32 6000
  %47 = load i8, ptr %26, align 4
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %42
  %51 = getelementptr %struct.dvb_ca_slot, ptr %25, i32 %28, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  %55 = and i32 %43, 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 true, i1 %56
  %58 = select i1 %57, i32 10, i32 %46
  br label %59

59:                                               ; preds = %50, %42, %37, %32, %27, %27, %27, %27, %27
  %60 = phi i32 [ %36, %32 ], [ %41, %37 ], [ %46, %42 ], [ 10, %27 ], [ 10, %27 ], [ 10, %27 ], [ 10, %27 ], [ 10, %27 ], [ %58, %50 ]
  %61 = tail call i32 @llvm.smin.i32(i32 %60, i32 %29) #13
  %62 = add nuw i32 %28, 1
  %63 = icmp eq i32 %62, %22
  br i1 %63, label %64, label %27

64:                                               ; preds = %59, %17
  %65 = phi i32 [ 100000000, %17 ], [ %61, %59 ]
  %66 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 9
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %13, %7, %2
  %68 = phi i32 [ 0, %2 ], [ 0, %13 ], [ 1, %64 ], [ 0, %7 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_read_data(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [512 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %1
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(512) %5, i8 0, i32 512, i1 false), !annotation !16
  %9 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_read_data, ptr noundef nonnull @__func__.dvb_ca_en50221_read_data) #12
  br label %13

13:                                               ; preds = %11, %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %1, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %144, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @dvb_ringbuffer_free(ptr noundef %16) #13
  %21 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %1, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 3
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %144, label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %8, align 4
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = select i1 %14, i32 512, i32 %3
  %36 = call i32 %29(ptr noundef %27, i32 noundef %1, ptr noundef nonnull %5, i32 noundef %35) #13
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %144, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %144, label %117

40:                                               ; preds = %31, %25
  %41 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %27, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %27, i32 noundef %1, i8 noundef zeroext 1) #13
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %144, label %45

45:                                               ; preds = %40
  %46 = and i32 %43, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %144, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %26, align 4
  %50 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %49, i32 noundef %1, i8 noundef zeroext 3) #13
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %144, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %26, align 4
  %56 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %55, i32 noundef %1, i8 noundef zeroext 2) #13
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %144, label %60

60:                                               ; preds = %54
  %61 = shl i32 %52, 8
  %62 = or i32 %58, %61
  br i1 %14, label %63, label %83

63:                                               ; preds = %60
  %64 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %1, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dvb_device, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %72, i32 noundef %62, i32 noundef %65) #12
  store i32 7, ptr %8, align 4
  br label %144

74:                                               ; preds = %63
  %75 = icmp slt i32 %62, 2
  br i1 %75, label %76, label %94

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.dvb_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %81) #12
  store i32 7, ptr %8, align 4
  br label %144

83:                                               ; preds = %60
  %84 = icmp sgt i32 %62, %3
  br i1 %84, label %85, label %92

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.dvb_device, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %90) #12
  br label %144

92:                                               ; preds = %83
  %93 = icmp sgt i32 %62, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %92, %74
  br label %95

95:                                               ; preds = %102, %94
  %96 = phi i32 [ %105, %102 ], [ 0, %94 ]
  %97 = load ptr, ptr %26, align 4
  %98 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 %99(ptr noundef %97, i32 noundef %1, i8 noundef zeroext 0) #13
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %144, label %102

102:                                              ; preds = %95
  %103 = trunc i32 %100 to i8
  %104 = getelementptr [512 x i8], ptr %5, i32 0, i32 %96
  store i8 %103, ptr %104, align 1
  %105 = add nuw nsw i32 %96, 1
  %106 = icmp eq i32 %105, %62
  br i1 %106, label %107, label %95

107:                                              ; preds = %102, %92
  %108 = load ptr, ptr %26, align 4
  %109 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %108, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 %110(ptr noundef %108, i32 noundef %1, i8 noundef zeroext 1) #13
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %144, label %113

113:                                              ; preds = %107
  %114 = and i32 %111, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store i32 7, ptr %8, align 4
  br label %144

117:                                              ; preds = %113, %38
  %118 = phi i32 [ %36, %38 ], [ %62, %113 ]
  br i1 %14, label %119, label %125

119:                                              ; preds = %117
  %120 = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %1, i32 8
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %144, label %123

123:                                              ; preds = %119
  %124 = call i32 @dvb_ringbuffer_pkt_write(ptr noundef %120, ptr noundef nonnull %5, i32 noundef %118) #13
  br label %126

125:                                              ; preds = %117
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %2, ptr nonnull align 1 %5, i32 %118, i1 false)
  br label %126

126:                                              ; preds = %125, %123
  %127 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %126
  %130 = load i8, ptr %5, align 1
  %131 = zext i8 %130 to i32
  %132 = getelementptr inbounds [512 x i8], ptr %5, i32 0, i32 1
  %133 = load i8, ptr %132, align 1
  %134 = xor i8 %133, -1
  %135 = lshr i8 %134, 7
  %136 = zext i8 %135 to i32
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.dvb_ca_en50221_read_data, i32 noundef %1, i32 noundef %131, i32 noundef %136, i32 noundef %118) #12
  br label %138

138:                                              ; preds = %129, %126
  %139 = getelementptr inbounds [512 x i8], ptr %5, i32 0, i32 1
  %140 = load i8, ptr %139, align 1
  %141 = icmp sgt i8 %140, -1
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 6
  call void @__wake_up(ptr noundef %143, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %144

144:                                              ; preds = %142, %138, %119, %116, %107, %95, %85, %76, %67, %54, %48, %45, %40, %38, %34, %19, %15
  %145 = phi i32 [ %36, %34 ], [ 0, %38 ], [ %43, %40 ], [ %52, %48 ], [ %58, %54 ], [ -5, %85 ], [ %111, %107 ], [ -5, %116 ], [ -5, %67 ], [ -5, %76 ], [ 0, %45 ], [ -5, %119 ], [ %118, %142 ], [ %118, %138 ], [ -5, %15 ], [ -11, %19 ], [ %100, %95 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #13
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_read_tuple(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %9, i32 noundef %1, i32 noundef %7) #13
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %6
  %15 = icmp eq i32 %12, 255
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dvb_ca_en50221_read_tuple, i32 noundef 255) #12
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, ptr %2, align 4
  %23 = add i32 %22, 2
  store i32 %23, ptr %2, align 4
  store i32 255, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %63

24:                                               ; preds = %14
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = add i32 %7, 2
  %29 = tail call i32 %27(ptr noundef %25, i32 noundef %1, i32 noundef %28) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %24
  %32 = add i32 %7, 4
  %33 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dvb_ca_en50221_read_tuple, i32 noundef %12, i32 noundef %29) #12
  br label %37

37:                                               ; preds = %35, %31
  %38 = icmp eq i32 %29, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %57, %37
  %40 = phi i32 [ %58, %57 ], [ 0, %37 ]
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = shl nuw i32 %40, 1
  %45 = add i32 %44, %32
  %46 = tail call i32 %43(ptr noundef %41, i32 noundef %1, i32 noundef %45) #13
  %47 = trunc i32 %46 to i8
  %48 = getelementptr i8, ptr %5, i32 %40
  store i8 %47, ptr %48, align 1
  %49 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %39
  %52 = and i32 %46, 255
  %53 = add nsw i32 %52, -32
  %54 = icmp ult i32 %53, 95
  %55 = select i1 %54, i32 %52, i32 46
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dvb_ca_en50221_read_tuple, i32 noundef %40, i32 noundef %52, i32 noundef %55) #12
  br label %57

57:                                               ; preds = %51, %39
  %58 = add nuw nsw i32 %40, 1
  %59 = icmp eq i32 %58, %29
  br i1 %59, label %60, label %39

60:                                               ; preds = %57, %37
  %61 = shl i32 %29, 1
  %62 = add i32 %61, %32
  store i32 %12, ptr %3, align 4
  store i32 %29, ptr %4, align 4
  store i32 %62, ptr %2, align 4
  br label %63

63:                                               ; preds = %60, %24, %21, %6
  %64 = phi i32 [ 0, %21 ], [ 0, %60 ], [ %12, %6 ], [ %29, %24 ]
  ret i32 %64
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_wait_if_status(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_ca_en50221_wait_if_status, ptr noundef nonnull @__func__.dvb_ca_en50221_wait_if_status) #12
  br label %9

9:                                                ; preds = %7, %4
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %11, %3
  %13 = getelementptr inbounds %struct.dvb_ca_private, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %14, i32 noundef %1, i8 noundef zeroext 1) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %9
  %20 = zext i8 %2 to i32
  br label %21

21:                                               ; preds = %32, %19
  %22 = phi i32 [ %17, %19 ], [ %36, %32 ]
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %47, label %41

28:                                               ; preds = %21
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 %12, %29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #13
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %33, i32 noundef %1, i8 noundef zeroext 1) #13
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %47, label %21

38:                                               ; preds = %28
  %39 = load i32, ptr @dvb_ca_en50221_debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38, %25
  %42 = phi ptr [ @.str.37, %25 ], [ @.str.38, %38 ]
  %43 = phi i32 [ 0, %25 ], [ -110, %38 ]
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = sub i32 %44, %10
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %42, ptr noundef nonnull @__func__.dvb_ca_en50221_wait_if_status, ptr noundef nonnull @__func__.dvb_ca_en50221_wait_if_status, i32 noundef %45) #12
  br label %47

47:                                               ; preds = %41, %38, %32, %25, %9
  %48 = phi i32 [ -110, %38 ], [ 0, %25 ], [ -5, %9 ], [ %43, %41 ], [ -5, %32 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!8 = !{i64 802798, i64 2148292769, i64 2148292795, i64 2148292842, i64 2148292864, i64 2148292892, i64 2148292912}
!9 = !{i64 2148304184, i64 2148304210, i64 2148304239, i64 2148304273, i64 2148304304, i64 2148304327}
!10 = !{i64 2152149313}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152179002}
!14 = !{i64 2152159827}
!15 = !{i64 2148306541, i64 2148306567, i64 2148306596, i64 2148306630, i64 2148306661, i64 2148306684}
!16 = !{!"auto-init"}
!17 = !{i64 2148405864}
!18 = !{i64 2148307999, i64 2148308031, i64 2148308060, i64 2148308094, i64 2148308125, i64 2148308148}
!19 = !{i64 2149319216}
!20 = !{i64 2151144634, i64 2151144659}
!21 = !{i64 3640168}
!22 = !{i64 3640365}
!23 = !{i64 2151125644}
!24 = !{i64 2151144056, i64 2151144081}
!25 = !{i64 567813, i64 567830, i64 2148051900}
!26 = !{i64 2148305642, i64 2148305674, i64 2148305703, i64 2148305737, i64 2148305768, i64 2148305791}
