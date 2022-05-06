; ModuleID = '/llk/IR/drivers/bus/vexpress-config.c_pt.bc'
source_filename = "../drivers/bus/vexpress-config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_init_vexpress_config:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_init_vexpress_config\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_init_vexpress_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.vexpress_config_bridge_ops = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.vexpress_config_bridge = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vexpress_syscfg = type { ptr, ptr, %struct.list_head }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.vexpress_syscfg_func = type { %struct.list_head, ptr, ptr, i32, [0 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.34, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.34 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [30 x i8] c"drivers/bus/vexpress-config.c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"vexpress_config_devres_release\00", align 1
@__kstrtab_devm_regmap_init_vexpress_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_init_vexpress_config = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_init_vexpress_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_init_vexpress_config to i32), ptr @__kstrtab_devm_regmap_init_vexpress_config, ptr @__kstrtabns_devm_regmap_init_vexpress_config }, section "___ksymtab_gpl+devm_regmap_init_vexpress_config", align 4
@__initcall__kmod_vexpress_config__183_418_vexpress_syscfg_driver_init6 = internal global ptr @vexpress_syscfg_driver_init, section ".initcall6.init", align 4
@vexpress_syscfg_driver = internal global %struct.platform_driver { ptr @vexpress_syscfg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vexpress_syscfg_id_table, i8 0 }, align 4
@__exitcall_vexpress_syscfg_driver_exit = internal global ptr @vexpress_syscfg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [49 x i8] c"vexpress_config.file=drivers/bus/vexpress-config\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [31 x i8] c"vexpress_config.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vexpress-syscfg\00", align 1
@vexpress_syscfg_id_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"vexpress-syscfg\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@vexpress_syscfg_bridge_ops = internal global %struct.vexpress_config_bridge_ops { ptr @vexpress_syscfg_regmap_init, ptr @vexpress_syscfg_regmap_exit }, align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"arm,hbi\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"DT HBI (%x) is not matching hardware (%x)!\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"arm,vexpress,config-bus\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"arm,vexpress,config-bridge\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"arm,vexpress-sysreg,func\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"arm,vexpress-energy\00", align 1
@vexpress_syscfg_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @vexpress_config_lock, ptr @vexpress_config_unlock, ptr null, ptr @vexpress_syscfg_read, ptr @vexpress_syscfg_write, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"arm,vexpress,site\00", align 1
@vexpress_config_site_master = internal unnamed_addr global i32 15, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"arm,vexpress,position\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"arm,vexpress,dcc\00", align 1
@vexpress_config_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vexpress_config_mutex, i64 12), ptr getelementptr (i8, ptr @vexpress_config_mutex, i64 12) } }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vexpress_syscfg_exec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_vexpress_syscfg_driver_exit, ptr @__initcall__kmod_vexpress_config__183_418_vexpress_syscfg_driver_init6, ptr @__ksymtab_devm_regmap_init_vexpress_config, ptr @vexpress_syscfg_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_regmap_init_vexpress_config(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #9
  br label %20

8:                                                ; preds = %1
  %9 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @vexpress_config_devres_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vexpress_config_bridge, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %13(ptr noundef %0, ptr noundef %15) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @devres_free(ptr noundef nonnull %9) #9
  br label %20

19:                                               ; preds = %11
  store ptr %16, ptr %9, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %9) #9
  br label %20

20:                                               ; preds = %19, %18, %8, %7
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %16, %18 ], [ %16, %19 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vexpress_config_devres_release(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vexpress_config_bridge_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vexpress_config_bridge, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %1, ptr noundef %11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vexpress_syscfg_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vexpress_syscfg_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vexpress_syscfg_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %60, label %7

7:                                                ; preds = %1
  store ptr %4, ptr %5, align 4
  %8 = getelementptr inbounds %struct.vexpress_syscfg, ptr %5, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vexpress_syscfg, ptr %5, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %11 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.vexpress_syscfg, ptr %5, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %11 to i32
  br label %60

16:                                               ; preds = %7
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 8, i32 noundef 3264) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %16
  store ptr @vexpress_syscfg_bridge_ops, ptr %17, align 4
  %20 = getelementptr inbounds %struct.vexpress_config_bridge, ptr %17, i32 0, i32 1
  store ptr %5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %21, align 8
  %22 = load ptr, ptr %12, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %24 = and i32 %23, 16384
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1, i32 2
  store i32 %26, ptr @vexpress_config_site_master, align 4
  %27 = load ptr, ptr @of_root, align 4
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load ptr, ptr %12, align 4
  %32 = select i1 %25, i32 36, i32 40
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %35 = and i32 %34, 4095
  %36 = load i32, ptr %3, align 4
  %37 = icmp eq i32 %36, %35
  br i1 %37, label %40, label %38, !prof !13

38:                                               ; preds = %30
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef null) #9
  %39 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %39, i32 noundef %35) #10
  br label %40

40:                                               ; preds = %38, %30, %19
  %41 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  br label %45

45:                                               ; preds = %57, %43
  %46 = phi ptr [ %41, %43 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !9
  %47 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %46, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %48 = icmp eq i32 %47, 0
  %49 = load ptr, ptr %2, align 4
  %50 = select i1 %48, ptr %49, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = call i32 @of_platform_populate(ptr noundef nonnull %46, ptr noundef null, ptr noundef null, ptr noundef %4) #9
  br label %57

57:                                               ; preds = %55, %45
  %58 = call ptr @of_find_compatible_node(ptr noundef nonnull %46, ptr noundef null, ptr noundef nonnull @.str.5) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %45

60:                                               ; preds = %57, %40, %16, %14, %1
  %61 = phi i32 [ %15, %14 ], [ -12, %1 ], [ -12, %16 ], [ 0, %40 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vexpress_syscfg_regmap_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  store i32 0, ptr %4, align 4
  %9 = tail call ptr @of_node_get(ptr noundef %8) #9
  %10 = icmp eq ptr %8, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %16, %2
  %12 = phi ptr [ %17, %16 ], [ %8, %2 ]
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @of_node_put(ptr noundef nonnull %12) #9
  br label %19

16:                                               ; preds = %11
  %17 = call ptr @of_get_next_parent(ptr noundef nonnull %12) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %16, %15
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 15
  %22 = load i32, ptr @vexpress_config_site_master, align 4
  br i1 %21, label %23, label %24

23:                                               ; preds = %19
  store i32 %22, ptr %4, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = icmp eq i32 %22, 15
  br i1 %25, label %53, label %31, !prof !8

26:                                               ; preds = %2
  %27 = load i32, ptr @vexpress_config_site_master, align 4
  %28 = icmp eq i32 %27, 15
  br i1 %28, label %53, label %29, !prof !8

29:                                               ; preds = %26
  store i32 0, ptr %5, align 4
  %30 = call ptr @of_node_get(ptr noundef %8) #9
  br label %33

31:                                               ; preds = %24
  store i32 0, ptr %5, align 4
  %32 = call ptr @of_node_get(ptr noundef nonnull %8) #9
  br i1 %10, label %33, label %35

33:                                               ; preds = %31, %29
  store i32 0, ptr %6, align 4
  %34 = call ptr @of_node_get(ptr noundef null) #9
  br label %54

35:                                               ; preds = %40, %31
  %36 = phi ptr [ %41, %40 ], [ %8, %31 ]
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %36, ptr noundef nonnull @.str.10, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #9
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void @of_node_put(ptr noundef nonnull %36) #9
  br label %43

40:                                               ; preds = %35
  %41 = call ptr @of_get_next_parent(ptr noundef nonnull %36) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %35

43:                                               ; preds = %40, %39
  store i32 0, ptr %6, align 4
  %44 = call ptr @of_node_get(ptr noundef nonnull %8) #9
  br label %45

45:                                               ; preds = %50, %43
  %46 = phi ptr [ %51, %50 ], [ %8, %43 ]
  %47 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %46, ptr noundef nonnull @.str.11, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @of_node_put(ptr noundef nonnull %46) #9
  br label %54

50:                                               ; preds = %45
  %51 = call ptr @of_get_next_parent(ptr noundef nonnull %46) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %45

53:                                               ; preds = %26, %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #9
  br label %130

54:                                               ; preds = %50, %49, %33
  %55 = load ptr, ptr %7, align 8
  %56 = call ptr @of_find_property(ptr noundef %55, ptr noundef nonnull @.str.7, ptr noundef null) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %130, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.property, ptr %56, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 3
  %62 = getelementptr inbounds %struct.property, ptr %56, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq i32 %61, 1
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load ptr, ptr %7, align 8
  %67 = call i32 @of_device_is_compatible(ptr noundef %66, ptr noundef nonnull @.str.8) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %63, align 4
  store i32 %70, ptr %3, align 4
  %71 = getelementptr i32, ptr %63, i32 1
  %72 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 %70, ptr %72, align 4
  %73 = load i32, ptr %71, align 4
  %74 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  store i32 %73, ptr %74, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %73) #9
  %76 = add i32 %75, 1
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %78 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %69, %65, %58
  %80 = phi ptr [ %3, %69 ], [ %63, %65 ], [ %63, %58 ]
  %81 = phi i32 [ 2, %69 ], [ 1, %65 ], [ %61, %58 ]
  %82 = shl nuw nsw i32 %81, 2
  %83 = add nuw i32 %82, 20
  %84 = call noalias align 64 ptr @__kmalloc(i32 noundef %83, i32 noundef 3520) #11
  %85 = icmp eq ptr %84, null
  br i1 %85, label %130, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %84, i32 0, i32 1
  store ptr %1, ptr %87, align 8
  %88 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %84, i32 0, i32 3
  store i32 %81, ptr %88, align 16
  %89 = icmp eq i32 %81, 0
  br i1 %89, label %118, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %6, align 4
  %92 = shl i32 %91, 26
  %93 = and i32 %92, 1006632960
  %94 = load i32, ptr %4, align 4
  %95 = shl i32 %94, 16
  %96 = and i32 %95, 196608
  %97 = or i32 %96, %93
  %98 = load i32, ptr %5, align 4
  %99 = shl i32 %98, 12
  %100 = and i32 %99, 61440
  br label %101

101:                                              ; preds = %101, %90
  %102 = phi i32 [ 0, %90 ], [ %116, %101 ]
  %103 = phi ptr [ %80, %90 ], [ %106, %101 ]
  %104 = getelementptr i32, ptr %103, i32 1
  %105 = load i32, ptr %103, align 4
  %106 = getelementptr i32, ptr %103, i32 2
  %107 = load i32, ptr %104, align 4
  %108 = getelementptr %struct.vexpress_syscfg_func, ptr %84, i32 0, i32 4, i32 %102
  %109 = lshr i32 %105, 4
  %110 = and i32 %109, 66060288
  %111 = and i32 %107, -15794176
  %112 = call i32 @llvm.bswap.i32(i32 %111)
  %113 = or i32 %112, %110
  %114 = or i32 %113, %97
  %115 = or i32 %114, %100
  store i32 %115, ptr %108, align 4
  %116 = add nuw nsw i32 %102, 1
  %117 = icmp eq i32 %116, %81
  br i1 %117, label %118, label %101

118:                                              ; preds = %101, %86
  %119 = add nsw i32 %81, -1
  store i32 %119, ptr getelementptr inbounds (%struct.regmap_config, ptr @vexpress_syscfg_regmap_config, i32 0, i32 19), align 4
  %120 = call ptr @__regmap_init(ptr noundef %0, ptr noundef null, ptr noundef nonnull %84, ptr noundef nonnull @vexpress_syscfg_regmap_config, ptr noundef null, ptr noundef null) #9
  %121 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %84, i32 0, i32 2
  store ptr %120, ptr %121, align 4
  %122 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  call void @kfree(ptr noundef nonnull %84) #9
  br label %130

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.vexpress_syscfg, ptr %1, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %84, ptr %127, align 4
  store ptr %126, ptr %84, align 64
  %128 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %125, ptr %128, align 4
  store volatile ptr %84, ptr %125, align 4
  %129 = load ptr, ptr %121, align 4
  br label %130

130:                                              ; preds = %124, %123, %79, %54, %53
  %131 = phi ptr [ inttoptr (i32 -22 to ptr), %53 ], [ %120, %123 ], [ %129, %124 ], [ inttoptr (i32 -22 to ptr), %54 ], [ inttoptr (i32 -12 to ptr), %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret ptr %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vexpress_syscfg_regmap_exit(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @regmap_exit(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.vexpress_syscfg, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %8, %2
  %6 = phi ptr [ %4, %2 ], [ %9, %8 ]
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.vexpress_syscfg, ptr %1, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %4, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef %6) #9
  br label %17

17:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vexpress_config_lock(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @vexpress_config_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vexpress_config_unlock(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @vexpress_config_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call fastcc i32 @vexpress_syscfg_exec(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  %5 = call fastcc i32 @vexpress_syscfg_exec(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true, ptr noundef nonnull %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vexpress_syscfg_exec(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %9, label %8, !prof !13

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #9
  br label %79

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vexpress_syscfg, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17, !prof !13

17:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #9
  br label %79

18:                                               ; preds = %9
  %19 = getelementptr %struct.vexpress_syscfg_func, ptr %0, i32 0, i32 4, i32 %1
  %20 = load i32, ptr %19, align 4
  %21 = select i1 %2, i32 -1073741824, i32 -2147483648
  %22 = or i32 %21, %20
  br i1 %2, label %24, label %23

23:                                               ; preds = %18
  store i32 -559038737, ptr %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %25 = load i32, ptr %3, align 4
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %28 = load ptr, ptr %12, align 4
  %29 = getelementptr i8, ptr %28, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #9, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr i8, ptr %30, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %22) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  br label %32

32:                                               ; preds = %58, %24
  %33 = phi i32 [ 100, %24 ], [ %61, %58 ]
  %34 = phi i32 [ 100, %24 ], [ %62, %58 ]
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !20
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = tail call ptr @llvm.thread.pointer() #9
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  store volatile i32 1, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %41 = tail call i32 @__usecs_to_jiffies(i32 noundef %33) #9
  %42 = tail call i32 @schedule_timeout(i32 noundef %41) #9
  %43 = load volatile i32, ptr %39, align 4
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %79, !prof !13

46:                                               ; preds = %38
  %47 = load volatile i32, ptr %39, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %79

50:                                               ; preds = %32
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %33) #9
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr i8, ptr %53, i32 72
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = icmp sgt i32 %33, 20
  %60 = add i32 %33, -20
  %61 = select i1 %59, i32 %60, i32 %33
  %62 = add nsw i32 %34, -1
  %63 = icmp ne i32 %62, 0
  %64 = and i32 %55, 1
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %32, label %67

67:                                               ; preds = %58
  %68 = load i1, ptr @vexpress_syscfg_exec.__already_done, align 1
  %69 = select i1 %63, i1 true, i1 %68
  br i1 %69, label %71, label %70, !prof !13

70:                                               ; preds = %67
  store i1 true, ptr @vexpress_syscfg_exec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #9
  br label %71

71:                                               ; preds = %70, %67
  %72 = xor i1 %63, true
  %73 = or i1 %72, %2
  %74 = select i1 %63, i32 0, i32 -110
  br i1 %73, label %79, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %12, align 4
  %77 = getelementptr i8, ptr %76, i32 64
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  store i32 %78, ptr %3, align 4
  br label %79

79:                                               ; preds = %75, %71, %52, %46, %38, %17, %8
  %80 = phi i32 [ -22, %8 ], [ -16, %17 ], [ %74, %71 ], [ 0, %75 ], [ -4, %38 ], [ -14, %52 ], [ -4, %46 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 369661}
!11 = !{i64 2151795724}
!12 = !{i64 2151796162}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2151775559}
!15 = !{i64 2151776959}
!16 = !{i64 369243}
!17 = !{i64 2151777284}
!18 = !{i64 2151777607}
!19 = !{i64 2151777860}
!20 = !{i64 512912}
!21 = !{i64 2151781273}
!22 = !{i64 2151782209}
!23 = !{i64 2151787630}
