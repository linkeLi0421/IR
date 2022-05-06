; ModuleID = '/llk/IR/kernel/sched/topology.c_pt.bc'
source_filename = "../kernel/sched/topology.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.sd_flag_debug = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.1, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.1 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.2, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.2 = type { i64, i64 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.sched_domain_topology_level = type { ptr, ptr, i32, i32, %struct.sd_data, ptr }
%struct.sd_data = type { ptr, ptr, ptr, ptr }
%struct.sched_group = type { ptr, %struct.atomic_t, i32, ptr, i32, i32, [0 x i32] }
%struct.sched_group_capacity = type { %struct.atomic_t, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.asym_cap_data = type { %struct.list_head, i32, [0 x i32] }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, ptr, %union.anon.119, ptr, i32, [0 x i32] }
%union.anon.119 = type { %struct.callback_head }
%struct.sched_domain_shared = type { %struct.atomic_t, %struct.atomic_t, i32 }
%struct.sched_domain_attr = type { i32 }

@sched_domains_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_domains_mutex, i64 12), ptr getelementptr (i8, ptr @sched_domains_mutex, i64 12) } }, align 4
@__setup_str_sched_debug_setup = internal constant [14 x i8] c"sched_verbose\00", section ".init.rodata", align 1
@__setup_sched_debug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_sched_debug_setup, ptr @sched_debug_setup, i32 1 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [19 x i8] c"SD_BALANCE_NEWIDLE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SD_BALANCE_EXEC\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SD_BALANCE_FORK\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SD_BALANCE_WAKE\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SD_WAKE_AFFINE\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"SD_ASYM_CPUCAPACITY\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"SD_ASYM_CPUCAPACITY_FULL\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SD_SHARE_CPUCAPACITY\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"SD_SHARE_PKG_RESOURCES\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"SD_SERIALIZE\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"SD_ASYM_PACKING\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SD_PREFER_SIBLING\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"SD_OVERLAP\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SD_NUMA\00", align 1
@sd_flag_debug = dso_local local_unnamed_addr constant [14 x %struct.sd_flag_debug] [%struct.sd_flag_debug { i32 5, ptr @.str }, %struct.sd_flag_debug { i32 5, ptr @.str.1 }, %struct.sd_flag_debug { i32 5, ptr @.str.2 }, %struct.sd_flag_debug { i32 5, ptr @.str.3 }, %struct.sd_flag_debug { i32 1, ptr @.str.4 }, %struct.sd_flag_debug { i32 6, ptr @.str.5 }, %struct.sd_flag_debug { i32 6, ptr @.str.6 }, %struct.sd_flag_debug { i32 5, ptr @.str.7 }, %struct.sd_flag_debug { i32 5, ptr @.str.8 }, %struct.sd_flag_debug { i32 6, ptr @.str.9 }, %struct.sd_flag_debug { i32 5, ptr @.str.10 }, %struct.sd_flag_debug { i32 4, ptr @.str.11 }, %struct.sd_flag_debug { i32 6, ptr @.str.12 }, %struct.sd_flag_debug { i32 6, ptr @.str.13 }], align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@def_root_domain = dso_local global %struct.root_domain zeroinitializer, align 8
@sched_asym_cpucapacity = dso_local global %struct.static_key_false zeroinitializer, align 4
@__setup_str_setup_relax_domain_level = internal constant [20 x i8] c"relax_domain_level=\00", section ".init.rodata", align 1
@__setup_setup_relax_domain_level = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_relax_domain_level, ptr @setup_relax_domain_level, i32 0 }, section ".init.setup", align 4
@set_sched_topology.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sched_smp_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"kernel/sched/topology.c\00", align 1
@sched_domain_topology = internal unnamed_addr global ptr @default_topology, align 4
@sched_domains_tmpmask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@sched_domains_tmpmask2 = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@fallback_doms = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@ndoms_cur = internal unnamed_addr global i32 0, align 4
@doms_cur = internal unnamed_addr global ptr null, align 4
@partition_sched_domains_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dattr_cur = internal unnamed_addr global ptr null, align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@sd_llc = dso_local global ptr null, section ".data..percpu", align 4
@sd_llc_size = dso_local global i32 0, section ".data..percpu", align 4
@sd_llc_id = dso_local global i32 0, section ".data..percpu", align 4
@sd_llc_shared = dso_local global ptr null, section ".data..percpu", align 4
@sd_numa = dso_local global ptr null, section ".data..percpu", align 4
@sd_asym_packing = dso_local global ptr null, section ".data..percpu", align 4
@sd_asym_cpucapacity = dso_local global ptr null, section ".data..percpu", align 4
@sched_domain_level_max = dso_local local_unnamed_addr global i32 0, align 4
@sched_debug_verbose = external dso_local local_unnamed_addr global i8, align 1
@default_relax_domain_level = internal global i32 -1, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"\014Unable to set relax_domain_level\0A\00", align 1
@default_topology = internal global [2 x %struct.sched_domain_topology_level] [%struct.sched_domain_topology_level { ptr @cpu_cpu_mask, ptr null, i32 0, i32 0, %struct.sd_data zeroinitializer, ptr @.str.16 }, %struct.sched_domain_topology_level zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"DIE\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@asym_cap_list = internal global %struct.list_head { ptr @asym_cap_list, ptr @asym_cap_list }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@asym_cpu_capacity_update_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for asymmetry data\0A\00", align 1
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@.str.18 = private unnamed_addr constant [52 x i8] c"\016root domain span: %*pbl (max cpu_capacity = %lu)\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"\013BUG: arch topology borken\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"\013     the %s domain not a subset of the %s domain\0A\00", align 1
@sd_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"wrong sd_flags in topology description\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sd_init.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"CPU capacity asymmetry not supported on SMT\0A\00", align 1
@asym_cpu_capacity_classify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_overlap_sched_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@build_balance_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@claim_allocations.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"\017CPU%d attaching NULL sched-domain.\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"\017CPU%d attaching sched-domain(s):\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"\017%*s domain-%d: \00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\01cspan=%*pbl level=%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"\013ERROR: domain->span does not contain CPU%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"\013ERROR: domain->groups does not contain CPU%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"\013ERROR: flag %s set here but not in child\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"\013ERROR: flag %s set here but not in parent\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"\017%*s groups:\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"\013ERROR: group is NULL\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"\013ERROR: empty group\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"\013ERROR: repeated CPUs\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"\01c %d:{ span=%*pbl\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"\01c mask=%*pbl\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"\01c cap=%lu\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"\013ERROR: domain->groups does not match domain->child\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\01c }\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"\01c,\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"\013ERROR: groups don't span domain->span\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"\013ERROR: parent span is not a superset of domain->span\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_sched_debug_setup, ptr @__setup_setup_relax_domain_level], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sched_debug_setup(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i8 1, ptr @sched_debug_verbose, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rq_attach_root(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !8
  tail call void @raw_spin_rq_lock_nested(ptr noundef %0, i32 noundef 0) #14
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.root_domain, ptr %5, i32 0, i32 4
  %11 = lshr i32 %9, 5
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %9, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void @set_rq_offline(ptr noundef %0) #14
  %19 = load i32, ptr %8, align 4
  br label %20

20:                                               ; preds = %18, %7
  %21 = phi i32 [ %19, %18 ], [ %9, %7 ]
  %22 = getelementptr inbounds %struct.root_domain, ptr %5, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %21, ptr noundef %22) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #14, !srcloc !10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !11
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr %5, ptr null
  br label %27

27:                                               ; preds = %20, %2
  %28 = phi ptr [ null, %2 ], [ %26, %20 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #14, !srcloc !10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #14, !srcloc !13
  store ptr %1, ptr %4, align 8
  %30 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.root_domain, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %31, ptr noundef %32) #14
  %33 = load i32, ptr %30, align 4
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_active_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  tail call void @set_rq_online(ptr noundef %0) #14
  br label %42

42:                                               ; preds = %41, %27
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #14
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #14, !srcloc !14
  %43 = icmp eq ptr %28, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.root_domain, ptr %28, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %45, ptr noundef nonnull @free_rootdomain) #14
  br label %46

46:                                               ; preds = %44, %42
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_rq_offline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_rq_online(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_rootdomain(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 120
  tail call void @cpupri_cleanup(ptr noundef %3) #14
  %4 = getelementptr i8, ptr %0, i32 56
  tail call void @cpudl_cleanup(ptr noundef %4) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_get_rd(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #14, !srcloc !10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #14, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_put_rd(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #14, !srcloc !10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #14, !srcloc !11
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.root_domain, ptr %0, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %6, ptr noundef nonnull @free_rootdomain) #14
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_defrootdomain() local_unnamed_addr #1 {
  store i32 0, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 3), align 8
  store i32 0, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 7), align 8
  store i32 0, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 18), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 15), align 8
  store i32 0, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 13), align 8
  store ptr null, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 12), align 8
  store i32 8, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 12, i32 0, i32 1), align 4
  store ptr @rto_push_irq_work_func, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 12, i32 1), align 8
  store ptr null, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 12, i32 2), align 4
  store i64 0, ptr getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 11), align 8
  tail call void @init_dl_bw(ptr noundef getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 9)) #14
  %1 = tail call i32 @cpudl_init(ptr noundef getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 10)) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @cpupri_init(ptr noundef getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 19)) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @cpudl_cleanup(ptr noundef getelementptr inbounds (%struct.root_domain, ptr @def_root_domain, i32 0, i32 10)) #14
  br label %7

7:                                                ; preds = %6, %3, %0
  store volatile i32 1, ptr @def_root_domain, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @group_balance_cpu(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.sched_group, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sched_group_capacity, ptr %3, i32 0, i32 7
  %5 = tail call i32 @_find_first_bit_le(ptr noundef %4, i32 noundef 16) #14
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_relax_domain_level(ptr noundef %0) #4 section ".init.text" {
  %2 = tail call i32 @kstrtoint(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @default_relax_domain_level) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %6

6:                                                ; preds = %4, %1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_sched_topology(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i8, ptr @sched_smp_initialized, align 1, !range !15
  %3 = icmp ne i8 %2, 0
  %4 = load i1, ptr @set_sched_topology.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !16

7:                                                ; preds = %1
  store i1 true, ptr @set_sched_topology.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1660, i32 noundef 9, ptr noundef null) #14
  br label %8

8:                                                ; preds = %7, %1
  br i1 %3, label %10, label %9

9:                                                ; preds = %8
  store ptr %0, ptr @sched_domain_topology, align 4
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @topology_update_cpu_topology() local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_sched_domains(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #14
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %7, label %4, !prof !16

4:                                                ; preds = %1
  %5 = extractvalue { i32, i1 } %2, 0
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #16
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ null, %1 ], [ %6, %4 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_sched_domains(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_init_domains(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  store i32 0, ptr @sched_domains_tmpmask, align 4
  store i32 0, ptr @sched_domains_tmpmask2, align 4
  store i32 0, ptr @fallback_doms, align 4
  %2 = tail call i32 @topology_update_cpu_topology()
  tail call fastcc void @asym_cpu_capacity_scan()
  store i32 1, ptr @ndoms_cur, align 4
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4) #17
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @fallback_doms, ptr %4
  store ptr %6, ptr @doms_cur, align 4
  %7 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #14
  %8 = load i32, ptr %0, align 4
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %8, 65535
  %11 = and i32 %10, %9
  store i32 %11, ptr %6, align 4
  %12 = load ptr, ptr @doms_cur, align 4
  %13 = tail call fastcc i32 @build_sched_domains(ptr noundef %12, ptr noundef null)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @asym_cpu_capacity_scan() unnamed_addr #1 {
  %1 = load ptr, ptr @asym_cap_list, align 4
  %2 = icmp eq ptr %1, @asym_cap_list
  br i1 %2, label %3, label %8

3:                                                ; preds = %8, %0
  %4 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #14
  %5 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask, ptr noundef %4) #18
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %13, label %56

8:                                                ; preds = %8, %0
  %9 = phi ptr [ %11, %8 ], [ %1, %0 ]
  %10 = getelementptr inbounds %struct.asym_cap_data, ptr %9, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, @asym_cap_list
  br i1 %12, label %3, label %8

13:                                               ; preds = %51, %3
  %14 = phi i32 [ %53, %51 ], [ %5, %3 ]
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, ptrtoint (ptr @cpu_scale to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %24, %13
  %21 = phi ptr [ @asym_cap_list, %13 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @asym_cap_list
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.asym_cap_data, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %19, %26
  br i1 %27, label %42, label %20

28:                                               ; preds = %20
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 16) #17
  %31 = icmp eq ptr %30, null
  %32 = load i1, ptr @asym_cpu_capacity_update_data.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !16

35:                                               ; preds = %28
  store i1 true, ptr @asym_cpu_capacity_update_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1348, i32 noundef 9, ptr noundef nonnull @.str.17) #14
  br label %36

36:                                               ; preds = %35, %28
  br i1 %31, label %51, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.asym_cap_data, ptr %30, i32 0, i32 1
  store i32 %19, ptr %38, align 8
  %39 = load ptr, ptr @asym_cap_list, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %30, ptr %40, align 4
  store ptr %39, ptr %30, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr @asym_cap_list, ptr %41, align 4
  store volatile ptr %30, ptr @asym_cap_list, align 4
  br label %42

42:                                               ; preds = %37, %24
  %43 = phi ptr [ %30, %37 ], [ %22, %24 ]
  %44 = getelementptr inbounds %struct.asym_cap_data, ptr %43, i32 0, i32 2
  %45 = and i32 %14, 31
  %46 = shl nuw i32 1, %45
  %47 = lshr i32 %14, 5
  %48 = getelementptr i32, ptr %44, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %42, %36
  %52 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #14
  %53 = tail call i32 @cpumask_next_and(i32 noundef %14, ptr noundef nonnull @__cpu_possible_mask, ptr noundef %52) #18
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %13, label %56

56:                                               ; preds = %51, %3
  %57 = load ptr, ptr @asym_cap_list, align 4
  %58 = icmp eq ptr %57, @asym_cap_list
  br i1 %58, label %72, label %59

59:                                               ; preds = %70, %56
  %60 = phi ptr [ %61, %70 ], [ %57, %56 ]
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.asym_cap_data, ptr %60, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %61, ptr %68, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %67, align 4
  tail call void @kfree(ptr noundef %60) #14
  br label %70

70:                                               ; preds = %66, %59
  %71 = icmp eq ptr %61, @asym_cap_list
  br i1 %71, label %72, label %59

72:                                               ; preds = %70, %56
  %73 = load volatile ptr, ptr @asym_cap_list, align 4
  %74 = icmp eq ptr %73, @asym_cap_list
  %75 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @asym_cap_list, i32 0, i32 1), align 4
  %76 = icmp ne ptr %73, %75
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %73, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %73, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %79, align 4
  tail call void @kfree(ptr noundef %73) #14
  br label %83

83:                                               ; preds = %78, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @build_sched_domains(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2201, i32 noundef 9, ptr noundef null) #14
  br label %1005

7:                                                ; preds = %2
  %8 = load ptr, ptr @sched_domain_topology, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %79, label %11

11:                                               ; preds = %75, %7
  %12 = phi ptr [ %76, %75 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %12, i32 0, i32 4
  %14 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #16
  store ptr %14, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %905, label %16

16:                                               ; preds = %11
  %17 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #16
  %18 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %12, i32 0, i32 4, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %905, label %20

20:                                               ; preds = %16
  %21 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #16
  %22 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %12, i32 0, i32 4, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %905, label %24

24:                                               ; preds = %20
  %25 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #16
  %26 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %12, i32 0, i32 4, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %905, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #18
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %65, %28
  %33 = phi i32 [ %72, %65 ], [ %29, %28 ]
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 108) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %905, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %13, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = inttoptr i32 %42 to ptr
  store ptr %35, ptr %43, align 4
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 12) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %905, label %47

47:                                               ; preds = %37
  %48 = load ptr, ptr %18, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = load i32, ptr %40, align 4
  %51 = add i32 %50, %49
  %52 = inttoptr i32 %51 to ptr
  store ptr %45, ptr %52, align 4
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 28) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %905, label %56

56:                                               ; preds = %47
  store ptr %54, ptr %54, align 8
  %57 = load ptr, ptr %22, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = load i32, ptr %40, align 4
  %60 = add i32 %59, %58
  %61 = inttoptr i32 %60 to ptr
  store ptr %54, ptr %61, align 4
  %62 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 32) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %905, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.sched_group_capacity, ptr %63, i32 0, i32 6
  store i32 %33, ptr %66, align 8
  %67 = load ptr, ptr %26, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = load i32, ptr %40, align 4
  %70 = add i32 %69, %68
  %71 = inttoptr i32 %70 to ptr
  store ptr %63, ptr %71, align 4
  %72 = tail call i32 @cpumask_next(i32 noundef %33, ptr noundef %0) #18
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %32, label %75

75:                                               ; preds = %65, %28
  %76 = getelementptr %struct.sched_domain_topology_level, ptr %12, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %11

79:                                               ; preds = %75, %7
  %80 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #16
  %81 = icmp eq ptr %80, null
  br i1 %81, label %905, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 952) #17
  %85 = icmp eq ptr %84, null
  br i1 %85, label %903, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 3
  store i32 0, ptr %87, align 8
  %88 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 4
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 7
  store i32 0, ptr %89, align 8
  %90 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 18
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 15
  store i32 -1, ptr %91, align 8
  %92 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 13
  store i32 0, ptr %92, align 8
  %93 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 12
  store ptr null, ptr %93, align 8
  %94 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 12, i32 0, i32 1
  store i32 8, ptr %94, align 4
  %95 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 12, i32 1
  store ptr @rto_push_irq_work_func, ptr %95, align 8
  %96 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 12, i32 2
  store ptr null, ptr %96, align 4
  %97 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 11
  store i64 0, ptr %97, align 8
  %98 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 9
  tail call void @init_dl_bw(ptr noundef %98) #14
  %99 = getelementptr %struct.root_domain, ptr %84, i32 0, i32 10
  %100 = tail call i32 @cpudl_init(ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %901

102:                                              ; preds = %86
  %103 = getelementptr %struct.root_domain, ptr %84, i32 0, i32 19
  %104 = tail call i32 @cpupri_init(ptr noundef %103) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %899

106:                                              ; preds = %102
  %107 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #18
  %108 = load i32, ptr @nr_cpu_ids, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = icmp eq ptr %1, null
  %112 = ptrtoint ptr %80 to i32
  br label %120

113:                                              ; preds = %388, %106
  %114 = phi i32 [ %108, %106 ], [ %389, %388 ]
  %115 = phi i1 [ false, %106 ], [ %390, %388 ]
  %116 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #18
  %117 = icmp ult i32 %116, %114
  %118 = ptrtoint ptr %80 to i32
  br i1 %117, label %399, label %119

119:                                              ; preds = %395, %113
  br label %722

120:                                              ; preds = %388, %110
  %121 = phi i32 [ %108, %110 ], [ %389, %388 ]
  %122 = phi i32 [ %107, %110 ], [ %391, %388 ]
  %123 = phi i1 [ false, %110 ], [ %390, %388 ]
  %124 = load ptr, ptr @sched_domain_topology, align 4
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %388, label %127

127:                                              ; preds = %120
  %128 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  br label %133

129:                                              ; preds = %380
  %130 = getelementptr %struct.sched_domain_topology_level, ptr %137, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %386, label %133

133:                                              ; preds = %129, %127
  %134 = phi ptr [ %125, %127 ], [ %131, %129 ]
  %135 = phi ptr [ null, %127 ], [ %184, %129 ]
  %136 = phi i1 [ %123, %127 ], [ %366, %129 ]
  %137 = phi ptr [ %124, %127 ], [ %130, %129 ]
  %138 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %133
  %143 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #18
  %144 = load i32, ptr @nr_cpu_ids, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %169, %142
  %147 = phi i32 [ %170, %169 ], [ %143, %142 ]
  %148 = icmp eq i32 %147, %122
  br i1 %148, label %169, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %137, align 4
  %151 = tail call ptr %150(i32 noundef %122) #14
  %152 = load ptr, ptr %137, align 4
  %153 = tail call ptr %152(i32 noundef %147) #14
  %154 = load i32, ptr %151, align 4
  %155 = load i32, ptr %153, align 4
  %156 = xor i32 %155, %154
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %149
  %160 = load ptr, ptr %137, align 4
  %161 = tail call ptr %160(i32 noundef %122) #14
  %162 = load ptr, ptr %137, align 4
  %163 = tail call ptr %162(i32 noundef %147) #14
  %164 = load i32, ptr %161, align 4
  %165 = load i32, ptr %163, align 4
  %166 = and i32 %164, 65535
  %167 = and i32 %166, %165
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173, !prof !17

169:                                              ; preds = %159, %149, %146
  %170 = tail call i32 @cpumask_next(i32 noundef %147, ptr noundef %0) #18
  %171 = load i32, ptr @nr_cpu_ids, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %146, label %174

173:                                              ; preds = %159
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2215, i32 noundef 9, ptr noundef null) #14
  br label %894

174:                                              ; preds = %169
  %175 = load ptr, ptr %137, align 4
  br label %176

176:                                              ; preds = %174, %142, %133
  %177 = phi ptr [ %175, %174 ], [ %134, %133 ], [ %134, %142 ]
  %178 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %137, i32 0, i32 4
  %179 = load ptr, ptr %178, align 4
  %180 = ptrtoint ptr %179 to i32
  %181 = load i32, ptr %128, align 4
  %182 = add i32 %181, %180
  %183 = inttoptr i32 %182 to ptr
  %184 = load ptr, ptr %183, align 4
  %185 = tail call ptr %177(i32 noundef %122) #14
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %186, 65535
  %188 = tail call i32 @__sw_hweight32(i32 noundef %187) #14
  %189 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %137, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %176
  %193 = tail call i32 %190() #14
  %194 = and i32 %193, -9601
  %195 = icmp ne i32 %194, 0
  %196 = load i1, ptr @sd_init.__already_done, align 1
  %197 = xor i1 %196, true
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %200, !prof !16

199:                                              ; preds = %192
  store i1 true, ptr @sd_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1543, i32 noundef 9, ptr noundef nonnull @.str.21) #14
  br label %200

200:                                              ; preds = %199, %192, %176
  %201 = phi i32 [ %193, %199 ], [ %193, %192 ], [ 0, %176 ]
  %202 = and i32 %201, 9600
  %203 = shl i32 %188, 1
  %204 = or i32 %202, 2071
  %205 = load volatile i32, ptr @jiffies, align 64
  %206 = load volatile i32, ptr @jiffies, align 64
  %207 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %137, i32 0, i32 5
  %208 = load ptr, ptr %207, align 4
  store ptr null, ptr %184, align 8
  %209 = getelementptr inbounds i8, ptr %184, i32 4
  store ptr %135, ptr %209, align 4
  %210 = getelementptr inbounds i8, ptr %184, i32 8
  store ptr null, ptr %210, align 8
  %211 = getelementptr inbounds i8, ptr %184, i32 12
  store i32 %188, ptr %211, align 4
  %212 = getelementptr inbounds i8, ptr %184, i32 16
  store i32 %203, ptr %212, align 8
  %213 = getelementptr inbounds i8, ptr %184, i32 20
  store i32 16, ptr %213, align 4
  %214 = getelementptr inbounds i8, ptr %184, i32 24
  store i32 117, ptr %214, align 8
  %215 = getelementptr inbounds i8, ptr %184, i32 28
  store i32 0, ptr %215, align 4
  %216 = getelementptr inbounds i8, ptr %184, i32 32
  store i32 0, ptr %216, align 8
  %217 = getelementptr inbounds i8, ptr %184, i32 36
  store i32 %204, ptr %217, align 4
  %218 = getelementptr inbounds i8, ptr %184, i32 40
  store i32 0, ptr %218, align 8
  %219 = getelementptr inbounds i8, ptr %184, i32 44
  store i32 %205, ptr %219, align 4
  %220 = getelementptr inbounds i8, ptr %184, i32 48
  store i32 %188, ptr %220, align 8
  %221 = getelementptr inbounds i8, ptr %184, i32 52
  store i32 0, ptr %221, align 4
  %222 = getelementptr inbounds i8, ptr %184, i32 56
  store i64 0, ptr %222, align 8
  %223 = getelementptr inbounds i8, ptr %184, i32 64
  store i32 %206, ptr %223, align 8
  %224 = getelementptr inbounds i8, ptr %184, i32 72
  store i64 0, ptr %224, align 8
  %225 = getelementptr inbounds i8, ptr %184, i32 80
  store ptr %208, ptr %225, align 8
  %226 = getelementptr inbounds i8, ptr %184, i32 84
  %227 = getelementptr inbounds i8, ptr %184, i32 92
  %228 = getelementptr inbounds %struct.sched_domain, ptr %184, i32 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %226, i8 0, i64 16, i1 false) #14
  %229 = load ptr, ptr %137, align 4
  %230 = tail call ptr %229(i32 noundef %122) #14
  %231 = load i32, ptr %0, align 4
  %232 = load i32, ptr %230, align 4
  %233 = and i32 %231, 65535
  %234 = and i32 %233, %232
  store i32 %234, ptr %228, align 4
  %235 = tail call i32 @_find_first_bit_le(ptr noundef %228, i32 noundef 16) #14
  %236 = load ptr, ptr @asym_cap_list, align 4
  %237 = icmp eq ptr %236, @asym_cap_list
  br i1 %237, label %264, label %238

238:                                              ; preds = %200
  %239 = load i32, ptr %228, align 4
  br label %240

240:                                              ; preds = %257, %238
  %241 = phi ptr [ %236, %238 ], [ %260, %257 ]
  %242 = phi i32 [ 0, %238 ], [ %259, %257 ]
  %243 = phi i32 [ 0, %238 ], [ %258, %257 ]
  %244 = getelementptr inbounds %struct.asym_cap_data, ptr %241, i32 0, i32 2
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 65535
  %247 = and i32 %246, %239
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %240
  %250 = add i32 %242, 1
  br label %257

251:                                              ; preds = %240
  %252 = load i32, ptr %0, align 4
  %253 = and i32 %252, %246
  %254 = icmp ne i32 %253, 0
  %255 = zext i1 %254 to i32
  %256 = add i32 %243, %255
  br label %257

257:                                              ; preds = %251, %249
  %258 = phi i32 [ %243, %249 ], [ %256, %251 ]
  %259 = phi i32 [ %250, %249 ], [ %242, %251 ]
  %260 = load ptr, ptr %241, align 4
  %261 = icmp eq ptr %260, @asym_cap_list
  br i1 %261, label %262, label %240

262:                                              ; preds = %257
  %263 = icmp eq i32 %259, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %262, %200
  %265 = load volatile ptr, ptr @asym_cap_list, align 4
  %266 = icmp ne ptr %265, @asym_cap_list
  %267 = load i1, ptr @asym_cpu_capacity_classify.__already_done, align 1
  %268 = xor i1 %267, true
  %269 = select i1 %266, i1 %268, i1 false
  br i1 %269, label %270, label %275, !prof !16

270:                                              ; preds = %264
  store i1 true, ptr @asym_cpu_capacity_classify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1323, i32 noundef 9, ptr noundef null) #14
  br label %275

271:                                              ; preds = %262
  %272 = icmp slt i32 %259, 2
  %273 = icmp eq i32 %258, 0
  %274 = select i1 %273, i32 96, i32 32
  br i1 %272, label %275, label %276

275:                                              ; preds = %271, %270, %264
  br label %276

276:                                              ; preds = %275, %271
  %277 = phi i32 [ 0, %275 ], [ %274, %271 ]
  %278 = load i32, ptr %217, align 4
  %279 = or i32 %278, %277
  store i32 %279, ptr %217, align 4
  %280 = and i32 %279, 160
  %281 = icmp eq i32 %280, 160
  %282 = load i1, ptr @sd_init.__already_done.22, align 1
  %283 = xor i1 %282, true
  %284 = select i1 %281, i1 %283, i1 false
  br i1 %284, label %285, label %287, !prof !16

285:                                              ; preds = %276
  store i1 true, ptr @sd_init.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1585, i32 noundef 9, ptr noundef nonnull @.str.23) #14
  %286 = load i32, ptr %217, align 4
  br label %287

287:                                              ; preds = %285, %276
  %288 = phi i32 [ %286, %285 ], [ %279, %276 ]
  %289 = and i32 %288, 32
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %287
  %292 = load ptr, ptr %209, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %299, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.sched_domain, ptr %292, i32 0, i32 9
  %296 = load i32, ptr %295, align 4
  %297 = and i32 %296, -2049
  store i32 %297, ptr %295, align 4
  %298 = load i32, ptr %217, align 4
  br label %299

299:                                              ; preds = %294, %291, %287
  %300 = phi i32 [ %298, %294 ], [ %288, %291 ], [ %288, %287 ]
  %301 = and i32 %300, 128
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %299
  %304 = and i32 %300, 256
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %303
  store i32 117, ptr %214, align 8
  store i32 1, ptr %215, align 4
  br label %311

307:                                              ; preds = %303
  store i32 1, ptr %215, align 4
  br label %323

308:                                              ; preds = %299
  store i32 110, ptr %214, align 8
  %309 = and i32 %300, 256
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %323, label %311

311:                                              ; preds = %308, %306
  %312 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %137, i32 0, i32 4, i32 1
  %313 = load ptr, ptr %312, align 4
  %314 = ptrtoint ptr %313 to i32
  %315 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %235
  %316 = load i32, ptr %315, align 4
  %317 = add i32 %316, %314
  %318 = inttoptr i32 %317 to ptr
  %319 = load ptr, ptr %318, align 4
  store ptr %319, ptr %227, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %319) #14, !srcloc !10
  %320 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %319, ptr %319, i32 1, ptr elementtype(i32) %319) #14, !srcloc !13
  %321 = load ptr, ptr %227, align 4
  %322 = getelementptr inbounds %struct.sched_domain_shared, ptr %321, i32 0, i32 1
  store volatile i32 %188, ptr %322, align 4
  br label %323

323:                                              ; preds = %311, %308, %307
  store ptr %178, ptr %226, align 4
  %324 = icmp eq ptr %135, null
  br i1 %324, label %347, label %325

325:                                              ; preds = %323
  %326 = getelementptr inbounds %struct.sched_domain, ptr %135, i32 0, i32 10
  %327 = load i32, ptr %326, align 8
  %328 = add i32 %327, 1
  store i32 %328, ptr %218, align 8
  %329 = load i32, ptr @sched_domain_level_max, align 4
  %330 = tail call i32 @llvm.smax.i32(i32 %329, i32 %328) #14
  store i32 %330, ptr @sched_domain_level_max, align 4
  store ptr %184, ptr %135, align 8
  %331 = getelementptr inbounds %struct.sched_domain, ptr %135, i32 0, i32 21
  %332 = load i32, ptr %331, align 4
  %333 = load i32, ptr %228, align 4
  %334 = xor i32 %333, -1
  %335 = and i32 %332, 65535
  %336 = and i32 %335, %334
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %347, label %338

338:                                              ; preds = %325
  %339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  %340 = getelementptr inbounds %struct.sched_domain, ptr %135, i32 0, i32 17
  %341 = load ptr, ptr %340, align 8
  %342 = load ptr, ptr %225, align 8
  %343 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %341, ptr noundef %342) #15
  %344 = load i32, ptr %228, align 4
  %345 = load i32, ptr %331, align 4
  %346 = or i32 %345, %344
  store i32 %346, ptr %228, align 4
  br label %347

347:                                              ; preds = %338, %325, %323
  br i1 %111, label %351, label %348

348:                                              ; preds = %347
  %349 = load i32, ptr %1, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %348, %347
  %352 = load i32, ptr @default_relax_domain_level, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %351, %348
  %355 = phi i32 [ %352, %351 ], [ %349, %348 ]
  %356 = load i32, ptr %218, align 8
  %357 = icmp sgt i32 %356, %355
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load i32, ptr %217, align 4
  %360 = and i32 %359, -10
  store i32 %360, ptr %217, align 4
  br label %361

361:                                              ; preds = %358, %354, %351
  %362 = load i32, ptr %217, align 4
  %363 = and i32 %362, 32
  %364 = zext i1 %136 to i32
  %365 = or i32 %363, %364
  %366 = icmp ne i32 %365, 0
  %367 = load ptr, ptr @sched_domain_topology, align 4
  %368 = icmp eq ptr %137, %367
  br i1 %368, label %369, label %373

369:                                              ; preds = %361
  %370 = load i32, ptr %128, align 4
  %371 = add i32 %370, %112
  %372 = inttoptr i32 %371 to ptr
  store ptr %184, ptr %372, align 4
  br label %373

373:                                              ; preds = %369, %361
  %374 = load i32, ptr %138, align 4
  %375 = and i32 %374, 1
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %373
  %378 = load i32, ptr %217, align 4
  %379 = or i32 %378, 4096
  store i32 %379, ptr %217, align 4
  br label %380

380:                                              ; preds = %377, %373
  %381 = load i32, ptr %0, align 4
  %382 = load i32, ptr %228, align 4
  %383 = xor i32 %382, %381
  %384 = and i32 %383, 65535
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %129

386:                                              ; preds = %380, %129
  %387 = load i32, ptr @nr_cpu_ids, align 4
  br label %388

388:                                              ; preds = %386, %120
  %389 = phi i32 [ %121, %120 ], [ %387, %386 ]
  %390 = phi i1 [ %123, %120 ], [ %366, %386 ]
  %391 = tail call i32 @cpumask_next(i32 noundef %122, ptr noundef %0) #18
  %392 = icmp ult i32 %391, %389
  br i1 %392, label %120, label %113

393:                                              ; preds = %717
  %394 = load i32, ptr @nr_cpu_ids, align 4
  br label %395

395:                                              ; preds = %399, %393
  %396 = phi i32 [ %394, %393 ], [ %400, %399 ]
  %397 = tail call i32 @cpumask_next(i32 noundef %401, ptr noundef %0) #18
  %398 = icmp ult i32 %397, %396
  br i1 %398, label %399, label %119

399:                                              ; preds = %395, %113
  %400 = phi i32 [ %396, %395 ], [ %114, %113 ]
  %401 = phi i32 [ %397, %395 ], [ %116, %113 ]
  %402 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %401
  %403 = load i32, ptr %402, align 4
  %404 = add i32 %403, %118
  %405 = inttoptr i32 %404 to ptr
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %395, label %408

408:                                              ; preds = %399
  %409 = add i32 %401, -1
  br label %410

410:                                              ; preds = %717, %408
  %411 = phi ptr [ %406, %408 ], [ %720, %717 ]
  %412 = getelementptr inbounds %struct.sched_domain, ptr %411, i32 0, i32 21
  %413 = load i32, ptr %412, align 4
  %414 = and i32 %413, 65535
  %415 = tail call i32 @__sw_hweight32(i32 noundef %414) #14
  %416 = getelementptr inbounds %struct.sched_domain, ptr %411, i32 0, i32 20
  store i32 %415, ptr %416, align 8
  %417 = getelementptr inbounds %struct.sched_domain, ptr %411, i32 0, i32 9
  %418 = load i32, ptr %417, align 4
  %419 = and i32 %418, 4096
  %420 = icmp eq i32 %419, 0
  %421 = getelementptr inbounds %struct.sched_domain, ptr %411, i32 0, i32 18
  %422 = load ptr, ptr %421, align 4
  store i32 0, ptr @sched_domains_tmpmask, align 4
  %423 = tail call i32 @cpumask_next_wrap(i32 noundef %409, ptr noundef %412, i32 noundef %401, i1 noundef zeroext false) #14
  %424 = icmp ult i32 %423, 16
  br i1 %420, label %621, label %425

425:                                              ; preds = %410
  br i1 %424, label %426, label %717

426:                                              ; preds = %604, %425
  %427 = phi ptr [ %606, %604 ], [ null, %425 ]
  %428 = phi ptr [ %605, %604 ], [ null, %425 ]
  %429 = phi i32 [ %607, %604 ], [ %423, %425 ]
  %430 = lshr i32 %429, 5
  %431 = getelementptr i32, ptr @sched_domains_tmpmask, i32 %430
  %432 = load volatile i32, ptr %431, align 4
  %433 = shl nuw nsw i32 1, %429
  %434 = and i32 %432, %433
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %604

436:                                              ; preds = %426
  %437 = load ptr, ptr %422, align 4
  %438 = ptrtoint ptr %437 to i32
  %439 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %429
  %440 = load i32, ptr %439, align 4
  %441 = add i32 %440, %438
  %442 = inttoptr i32 %441 to ptr
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr inbounds %struct.sched_domain, ptr %443, i32 0, i32 21
  %445 = getelementptr i32, ptr %444, i32 %430
  %446 = load volatile i32, ptr %445, align 4
  %447 = and i32 %446, %433
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %604, label %449

449:                                              ; preds = %436
  %450 = getelementptr inbounds %struct.sched_domain, ptr %443, i32 0, i32 1
  %451 = load ptr, ptr %450, align 4
  %452 = icmp eq ptr %451, null
  br i1 %452, label %495, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.sched_domain, ptr %451, i32 0, i32 21
  %455 = load i32, ptr %454, align 4
  %456 = load i32, ptr %412, align 4
  %457 = and i32 %456, 65535
  %458 = xor i32 %457, 65535
  %459 = and i32 %458, %455
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %495, label %461

461:                                              ; preds = %453
  %462 = and i32 %455, %458
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %474, label %464

464:                                              ; preds = %469, %461
  %465 = phi ptr [ %467, %469 ], [ %451, %461 ]
  %466 = getelementptr inbounds %struct.sched_domain, ptr %465, i32 0, i32 1
  %467 = load ptr, ptr %466, align 4
  %468 = icmp eq ptr %467, null
  br i1 %468, label %495, label %469

469:                                              ; preds = %464
  %470 = getelementptr inbounds %struct.sched_domain, ptr %467, i32 0, i32 21
  %471 = load i32, ptr %470, align 4
  %472 = and i32 %471, %458
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %464

474:                                              ; preds = %469, %461
  %475 = phi i32 [ %455, %461 ], [ %471, %469 ]
  %476 = phi ptr [ %443, %461 ], [ %465, %469 ]
  %477 = phi ptr [ %451, %461 ], [ %467, %469 ]
  %478 = getelementptr inbounds %struct.sched_domain, ptr %476, i32 0, i32 21
  %479 = load i32, ptr %478, align 4
  %480 = xor i32 %475, %479
  %481 = and i32 %480, 65535
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %489, label %495

483:                                              ; preds = %489
  %484 = getelementptr inbounds %struct.sched_domain, ptr %493, i32 0, i32 21
  %485 = load i32, ptr %484, align 4
  %486 = xor i32 %485, %490
  %487 = and i32 %486, 65535
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %483, %474
  %490 = phi i32 [ %485, %483 ], [ %475, %474 ]
  %491 = phi ptr [ %493, %483 ], [ %477, %474 ]
  %492 = getelementptr inbounds %struct.sched_domain, ptr %491, i32 0, i32 1
  %493 = load ptr, ptr %492, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %483

495:                                              ; preds = %489, %483, %474, %464, %453, %449
  %496 = phi ptr [ %443, %453 ], [ %443, %449 ], [ %476, %474 ], [ %491, %489 ], [ %491, %483 ], [ %465, %464 ]
  %497 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %498 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %497, i32 noundef 3520, i32 noundef 28) #17
  %499 = icmp eq ptr %498, null
  br i1 %499, label %609, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.sched_group, ptr %498, i32 0, i32 6
  %502 = getelementptr inbounds %struct.sched_domain, ptr %496, i32 0, i32 1
  %503 = load ptr, ptr %502, align 4
  %504 = icmp eq ptr %503, null
  br i1 %504, label %511, label %505

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.sched_domain, ptr %503, i32 0, i32 21
  %507 = load i32, ptr %506, align 4
  store i32 %507, ptr %501, align 8
  %508 = getelementptr inbounds %struct.sched_domain, ptr %503, i32 0, i32 9
  %509 = load i32, ptr %508, align 4
  %510 = getelementptr inbounds %struct.sched_group, ptr %498, i32 0, i32 5
  store i32 %509, ptr %510, align 4
  br label %514

511:                                              ; preds = %500
  %512 = getelementptr inbounds %struct.sched_domain, ptr %496, i32 0, i32 21
  %513 = load i32, ptr %512, align 4
  store i32 %513, ptr %501, align 8
  br label %514

514:                                              ; preds = %511, %505
  %515 = getelementptr inbounds %struct.sched_group, ptr %498, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %515) #14, !srcloc !10
  %516 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %515, ptr %515, i32 1, ptr elementtype(i32) %515) #14, !srcloc !13
  %517 = load i32, ptr @sched_domains_tmpmask, align 4
  %518 = load i32, ptr %501, align 8
  %519 = or i32 %518, %517
  store i32 %519, ptr @sched_domains_tmpmask, align 4
  %520 = getelementptr inbounds %struct.sched_domain, ptr %496, i32 0, i32 18
  %521 = load ptr, ptr %520, align 4
  store i32 0, ptr @sched_domains_tmpmask2, align 4
  %522 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %501) #18
  %523 = load i32, ptr @nr_cpu_ids, align 4
  %524 = icmp ult i32 %522, %523
  br i1 %524, label %525, label %555

525:                                              ; preds = %547, %514
  %526 = phi i32 [ %548, %547 ], [ %523, %514 ]
  %527 = phi i32 [ %549, %547 ], [ %522, %514 ]
  %528 = load ptr, ptr %521, align 4
  %529 = ptrtoint ptr %528 to i32
  %530 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %527
  %531 = load i32, ptr %530, align 4
  %532 = add i32 %531, %529
  %533 = inttoptr i32 %532 to ptr
  %534 = load ptr, ptr %533, align 4
  %535 = getelementptr inbounds %struct.sched_domain, ptr %534, i32 0, i32 1
  %536 = load ptr, ptr %535, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %547, label %538

538:                                              ; preds = %525
  %539 = getelementptr inbounds %struct.sched_domain, ptr %536, i32 0, i32 21
  %540 = load i32, ptr %501, align 8
  %541 = load i32, ptr %539, align 4
  %542 = xor i32 %541, %540
  %543 = and i32 %542, 65535
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %547

545:                                              ; preds = %538
  tail call void @_set_bit(i32 noundef %527, ptr noundef nonnull @sched_domains_tmpmask2) #14
  %546 = load i32, ptr @nr_cpu_ids, align 4
  br label %547

547:                                              ; preds = %545, %538, %525
  %548 = phi i32 [ %546, %545 ], [ %526, %525 ], [ %526, %538 ]
  %549 = tail call i32 @cpumask_next(i32 noundef %527, ptr noundef %501) #18
  %550 = icmp ult i32 %549, %548
  br i1 %550, label %525, label %551

551:                                              ; preds = %547
  %552 = load i32, ptr @sched_domains_tmpmask2, align 4
  %553 = and i32 %552, 65535
  %554 = icmp eq i32 %553, 0
  br label %555

555:                                              ; preds = %551, %514
  %556 = phi i1 [ %554, %551 ], [ true, %514 ]
  %557 = load i1, ptr @build_balance_mask.__already_done, align 1
  %558 = xor i1 %557, true
  %559 = select i1 %556, i1 %558, i1 false
  br i1 %559, label %560, label %561, !prof !16

560:                                              ; preds = %555
  store i1 true, ptr @build_balance_mask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 906, i32 noundef 9, ptr noundef null) #14
  br label %561

561:                                              ; preds = %560, %555
  %562 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @sched_domains_tmpmask2, i32 noundef 16) #14
  %563 = getelementptr inbounds %struct.sd_data, ptr %521, i32 0, i32 3
  %564 = load ptr, ptr %563, align 4
  %565 = ptrtoint ptr %564 to i32
  %566 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %562
  %567 = load i32, ptr %566, align 4
  %568 = add i32 %567, %565
  %569 = inttoptr i32 %568 to ptr
  %570 = load ptr, ptr %569, align 4
  %571 = getelementptr inbounds %struct.sched_group, ptr %498, i32 0, i32 3
  store ptr %570, ptr %571, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %570) #14, !srcloc !10
  %572 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %570, ptr %570, i32 1, ptr elementtype(i32) %570) #14, !srcloc !19
  %573 = extractvalue { i32, i32 } %572, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %574 = icmp eq i32 %573, 1
  %575 = load ptr, ptr %571, align 4
  %576 = getelementptr inbounds %struct.sched_group_capacity, ptr %575, i32 0, i32 7
  br i1 %574, label %577, label %579

577:                                              ; preds = %561
  %578 = load i32, ptr @sched_domains_tmpmask2, align 4
  store i32 %578, ptr %576, align 4
  br label %588

579:                                              ; preds = %561
  %580 = load i32, ptr %576, align 4
  %581 = load i32, ptr @sched_domains_tmpmask2, align 4
  %582 = xor i32 %581, %580
  %583 = and i32 %582, 65535
  %584 = icmp eq i32 %583, 0
  %585 = load i1, ptr @init_overlap_sched_group.__already_done, align 1
  %586 = select i1 %584, i1 true, i1 %585
  br i1 %586, label %588, label %587, !prof !21

587:                                              ; preds = %579
  store i1 true, ptr @init_overlap_sched_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 953, i32 noundef 9, ptr noundef null) #14
  br label %588

588:                                              ; preds = %587, %579, %577
  %589 = load i32, ptr %501, align 8
  %590 = and i32 %589, 65535
  %591 = tail call i32 @__sw_hweight32(i32 noundef %590) #14
  %592 = shl i32 %591, 10
  %593 = load ptr, ptr %571, align 4
  %594 = getelementptr inbounds %struct.sched_group_capacity, ptr %593, i32 0, i32 1
  store i32 %592, ptr %594, align 4
  %595 = load ptr, ptr %571, align 4
  %596 = getelementptr inbounds %struct.sched_group_capacity, ptr %595, i32 0, i32 2
  store i32 1024, ptr %596, align 4
  %597 = load ptr, ptr %571, align 4
  %598 = getelementptr inbounds %struct.sched_group_capacity, ptr %597, i32 0, i32 3
  store i32 1024, ptr %598, align 4
  %599 = icmp eq ptr %427, null
  %600 = select i1 %599, ptr %498, ptr %427
  %601 = icmp eq ptr %428, null
  br i1 %601, label %603, label %602

602:                                              ; preds = %588
  store ptr %498, ptr %428, align 4
  br label %603

603:                                              ; preds = %602, %588
  store ptr %600, ptr %498, align 8
  br label %604

604:                                              ; preds = %603, %436, %426
  %605 = phi ptr [ %428, %436 ], [ %428, %426 ], [ %498, %603 ]
  %606 = phi ptr [ %427, %436 ], [ %427, %426 ], [ %600, %603 ]
  %607 = tail call i32 @cpumask_next_wrap(i32 noundef %429, ptr noundef %412, i32 noundef %401, i1 noundef zeroext true) #14
  %608 = icmp ult i32 %607, 16
  br i1 %608, label %426, label %717

609:                                              ; preds = %495
  %610 = icmp eq ptr %427, null
  br i1 %610, label %894, label %611

611:                                              ; preds = %619, %609
  %612 = phi ptr [ %613, %619 ], [ %427, %609 ]
  %613 = load ptr, ptr %612, align 4
  %614 = getelementptr inbounds %struct.sched_group, ptr %612, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %614) #14, !srcloc !10
  %615 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %614, ptr %614, i32 1, ptr elementtype(i32) %614) #14, !srcloc !11
  %616 = extractvalue { i32, i32 } %615, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %611
  tail call void @kfree(ptr noundef %612) #14
  br label %619

619:                                              ; preds = %618, %611
  %620 = icmp eq ptr %613, %427
  br i1 %620, label %894, label %611

621:                                              ; preds = %410
  br i1 %424, label %622, label %714

622:                                              ; preds = %621
  %623 = getelementptr inbounds %struct.sd_data, ptr %422, i32 0, i32 2
  %624 = getelementptr inbounds %struct.sd_data, ptr %422, i32 0, i32 3
  br label %625

625:                                              ; preds = %709, %622
  %626 = phi i32 [ %423, %622 ], [ %712, %709 ]
  %627 = phi ptr [ null, %622 ], [ %711, %709 ]
  %628 = phi ptr [ null, %622 ], [ %710, %709 ]
  %629 = lshr i32 %626, 5
  %630 = getelementptr i32, ptr @sched_domains_tmpmask, i32 %629
  %631 = load volatile i32, ptr %630, align 4
  %632 = shl nuw nsw i32 1, %626
  %633 = and i32 %631, %632
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %709

635:                                              ; preds = %625
  %636 = load ptr, ptr %422, align 4
  %637 = ptrtoint ptr %636 to i32
  %638 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %626
  %639 = load i32, ptr %638, align 4
  %640 = add i32 %639, %637
  %641 = inttoptr i32 %640 to ptr
  %642 = load ptr, ptr %641, align 4
  %643 = getelementptr inbounds %struct.sched_domain, ptr %642, i32 0, i32 1
  %644 = load ptr, ptr %643, align 4
  %645 = icmp eq ptr %644, null
  br i1 %645, label %651, label %646

646:                                              ; preds = %635
  %647 = getelementptr inbounds %struct.sched_domain, ptr %644, i32 0, i32 21
  %648 = tail call i32 @_find_first_bit_le(ptr noundef %647, i32 noundef 16) #14
  %649 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %648
  %650 = load i32, ptr %649, align 4
  br label %651

651:                                              ; preds = %646, %635
  %652 = phi i32 [ %650, %646 ], [ %639, %635 ]
  %653 = phi i32 [ %648, %646 ], [ %626, %635 ]
  %654 = load ptr, ptr %623, align 4
  %655 = ptrtoint ptr %654 to i32
  %656 = add i32 %652, %655
  %657 = inttoptr i32 %656 to ptr
  %658 = load ptr, ptr %657, align 4
  %659 = load ptr, ptr %624, align 4
  %660 = ptrtoint ptr %659 to i32
  %661 = add i32 %652, %660
  %662 = inttoptr i32 %661 to ptr
  %663 = load ptr, ptr %662, align 4
  %664 = getelementptr inbounds %struct.sched_group, ptr %658, i32 0, i32 3
  store ptr %663, ptr %664, align 4
  %665 = getelementptr inbounds %struct.sched_group, ptr %658, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %665) #14, !srcloc !10
  %666 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %665, ptr %665, i32 1, ptr elementtype(i32) %665) #14, !srcloc !19
  %667 = extractvalue { i32, i32 } %666, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %668 = icmp sgt i32 %667, 1
  %669 = load ptr, ptr %664, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %669) #14, !srcloc !10
  %670 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %669, ptr %669, i32 1, ptr elementtype(i32) %669) #14, !srcloc !19
  %671 = extractvalue { i32, i32 } %670, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %672 = icmp slt i32 %671, 2
  %673 = xor i1 %668, %672
  br i1 %673, label %675, label %674, !prof !21

674:                                              ; preds = %651
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1173, i32 noundef 9, ptr noundef null) #14
  br label %675

675:                                              ; preds = %674, %651
  br i1 %668, label %700, label %676

676:                                              ; preds = %675
  %677 = getelementptr inbounds %struct.sched_group, ptr %658, i32 0, i32 6
  br i1 %645, label %686, label %678

678:                                              ; preds = %676
  %679 = getelementptr inbounds %struct.sched_domain, ptr %644, i32 0, i32 21
  %680 = load i32, ptr %679, align 4
  store i32 %680, ptr %677, align 4
  %681 = load ptr, ptr %664, align 4
  %682 = getelementptr inbounds %struct.sched_group_capacity, ptr %681, i32 0, i32 7
  store i32 %680, ptr %682, align 4
  %683 = getelementptr inbounds %struct.sched_domain, ptr %644, i32 0, i32 9
  %684 = load i32, ptr %683, align 4
  %685 = getelementptr inbounds %struct.sched_group, ptr %658, i32 0, i32 5
  store i32 %684, ptr %685, align 4
  br label %689

686:                                              ; preds = %676
  tail call void @_set_bit(i32 noundef %653, ptr noundef %677) #14
  %687 = load ptr, ptr %664, align 4
  %688 = getelementptr inbounds %struct.sched_group_capacity, ptr %687, i32 0, i32 7
  tail call void @_set_bit(i32 noundef %653, ptr noundef %688) #14
  br label %689

689:                                              ; preds = %686, %678
  %690 = load i32, ptr %677, align 4
  %691 = and i32 %690, 65535
  %692 = tail call i32 @__sw_hweight32(i32 noundef %691) #14
  %693 = shl i32 %692, 10
  %694 = load ptr, ptr %664, align 4
  %695 = getelementptr inbounds %struct.sched_group_capacity, ptr %694, i32 0, i32 1
  store i32 %693, ptr %695, align 4
  %696 = load ptr, ptr %664, align 4
  %697 = getelementptr inbounds %struct.sched_group_capacity, ptr %696, i32 0, i32 2
  store i32 1024, ptr %697, align 4
  %698 = load ptr, ptr %664, align 4
  %699 = getelementptr inbounds %struct.sched_group_capacity, ptr %698, i32 0, i32 3
  store i32 1024, ptr %699, align 4
  br label %700

700:                                              ; preds = %689, %675
  %701 = getelementptr inbounds %struct.sched_group, ptr %658, i32 0, i32 6
  %702 = load i32, ptr @sched_domains_tmpmask, align 4
  %703 = load i32, ptr %701, align 4
  %704 = or i32 %703, %702
  store i32 %704, ptr @sched_domains_tmpmask, align 4
  %705 = icmp eq ptr %628, null
  %706 = select i1 %705, ptr %658, ptr %628
  %707 = icmp eq ptr %627, null
  br i1 %707, label %709, label %708

708:                                              ; preds = %700
  store ptr %658, ptr %627, align 4
  br label %709

709:                                              ; preds = %708, %700, %625
  %710 = phi ptr [ %628, %625 ], [ %706, %708 ], [ %706, %700 ]
  %711 = phi ptr [ %627, %625 ], [ %658, %708 ], [ %658, %700 ]
  %712 = tail call i32 @cpumask_next_wrap(i32 noundef %626, ptr noundef %412, i32 noundef %401, i1 noundef zeroext true) #14
  %713 = icmp ult i32 %712, 16
  br i1 %713, label %625, label %714

714:                                              ; preds = %709, %621
  %715 = phi ptr [ null, %621 ], [ %710, %709 ]
  %716 = phi ptr [ null, %621 ], [ %711, %709 ]
  store ptr %715, ptr %716, align 4
  br label %717

717:                                              ; preds = %714, %604, %425
  %718 = phi ptr [ %715, %714 ], [ null, %425 ], [ %606, %604 ]
  %719 = getelementptr inbounds %struct.sched_domain, ptr %411, i32 0, i32 2
  store ptr %718, ptr %719, align 8
  %720 = load ptr, ptr %411, align 4
  %721 = icmp eq ptr %720, null
  br i1 %721, label %393, label %410

722:                                              ; preds = %850, %119
  %723 = phi i32 [ %851, %850 ], [ 15, %119 ]
  %724 = lshr i32 %723, 5
  %725 = getelementptr i32, ptr %0, i32 %724
  %726 = load volatile i32, ptr %725, align 4
  %727 = shl nuw i32 1, %723
  %728 = and i32 %726, %727
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %850, label %730

730:                                              ; preds = %722
  %731 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %723
  %732 = load i32, ptr %731, align 4
  %733 = add i32 %732, %118
  %734 = inttoptr i32 %733 to ptr
  %735 = load ptr, ptr %734, align 4
  %736 = icmp eq ptr %735, null
  br i1 %736, label %850, label %737

737:                                              ; preds = %848, %730
  %738 = phi i32 [ %849, %848 ], [ %732, %730 ]
  %739 = phi ptr [ %846, %848 ], [ %735, %730 ]
  %740 = getelementptr inbounds %struct.sched_domain, ptr %739, i32 0, i32 18
  %741 = load ptr, ptr %740, align 4
  %742 = load ptr, ptr %741, align 4
  %743 = ptrtoint ptr %742 to i32
  %744 = add i32 %738, %743
  %745 = inttoptr i32 %744 to ptr
  %746 = load ptr, ptr %745, align 4
  %747 = icmp ne ptr %746, %739
  %748 = load i1, ptr @claim_allocations.__already_done, align 1
  %749 = xor i1 %748, true
  %750 = select i1 %747, i1 %749, i1 false
  br i1 %750, label %751, label %757, !prof !16

751:                                              ; preds = %737
  store i1 true, ptr @claim_allocations.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1473, i32 noundef 9, ptr noundef null) #14
  %752 = load ptr, ptr %741, align 4
  %753 = load i32, ptr %731, align 4
  %754 = ptrtoint ptr %752 to i32
  %755 = add i32 %753, %754
  %756 = inttoptr i32 %755 to ptr
  br label %757

757:                                              ; preds = %751, %737
  %758 = phi ptr [ %756, %751 ], [ %745, %737 ]
  store ptr null, ptr %758, align 4
  %759 = getelementptr inbounds %struct.sd_data, ptr %741, i32 0, i32 1
  %760 = load ptr, ptr %759, align 4
  %761 = ptrtoint ptr %760 to i32
  %762 = load i32, ptr %731, align 4
  %763 = add i32 %762, %761
  %764 = inttoptr i32 %763 to ptr
  %765 = load ptr, ptr %764, align 4
  %766 = load volatile i32, ptr %765, align 4
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %770, label %768

768:                                              ; preds = %757
  store ptr null, ptr %764, align 4
  %769 = load i32, ptr %731, align 4
  br label %770

770:                                              ; preds = %768, %757
  %771 = phi i32 [ %762, %757 ], [ %769, %768 ]
  %772 = getelementptr inbounds %struct.sd_data, ptr %741, i32 0, i32 2
  %773 = load ptr, ptr %772, align 4
  %774 = ptrtoint ptr %773 to i32
  %775 = add i32 %771, %774
  %776 = inttoptr i32 %775 to ptr
  %777 = load ptr, ptr %776, align 4
  %778 = getelementptr inbounds %struct.sched_group, ptr %777, i32 0, i32 1
  %779 = load volatile i32, ptr %778, align 4
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %783, label %781

781:                                              ; preds = %770
  store ptr null, ptr %776, align 4
  %782 = load i32, ptr %731, align 4
  br label %783

783:                                              ; preds = %781, %770
  %784 = phi i32 [ %771, %770 ], [ %782, %781 ]
  %785 = getelementptr inbounds %struct.sd_data, ptr %741, i32 0, i32 3
  %786 = load ptr, ptr %785, align 4
  %787 = ptrtoint ptr %786 to i32
  %788 = add i32 %784, %787
  %789 = inttoptr i32 %788 to ptr
  %790 = load ptr, ptr %789, align 4
  %791 = load volatile i32, ptr %790, align 4
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %794, label %793

793:                                              ; preds = %783
  store ptr null, ptr %789, align 4
  br label %794

794:                                              ; preds = %793, %783
  %795 = getelementptr inbounds %struct.sched_domain, ptr %739, i32 0, i32 2
  %796 = load ptr, ptr %795, align 8
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %799, !prof !16

798:                                              ; preds = %794
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1252, i32 noundef 9, ptr noundef null) #14
  br label %799

799:                                              ; preds = %798, %794
  %800 = getelementptr inbounds %struct.sched_domain, ptr %739, i32 0, i32 9
  br label %801

801:                                              ; preds = %834, %799
  %802 = phi ptr [ %796, %799 ], [ %835, %834 ]
  %803 = getelementptr inbounds %struct.sched_group, ptr %802, i32 0, i32 6
  %804 = load i32, ptr %803, align 4
  %805 = and i32 %804, 65535
  %806 = tail call i32 @__sw_hweight32(i32 noundef %805) #14
  %807 = getelementptr inbounds %struct.sched_group, ptr %802, i32 0, i32 2
  store i32 %806, ptr %807, align 4
  %808 = load i32, ptr %800, align 4
  %809 = and i32 %808, 1024
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %834, label %811

811:                                              ; preds = %801
  %812 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %803) #18
  %813 = load i32, ptr @nr_cpu_ids, align 4
  %814 = icmp ult i32 %812, %813
  br i1 %814, label %815, label %831

815:                                              ; preds = %826, %811
  %816 = phi i32 [ %827, %826 ], [ %813, %811 ]
  %817 = phi i32 [ %829, %826 ], [ %812, %811 ]
  %818 = phi i32 [ %828, %826 ], [ -1, %811 ]
  %819 = icmp slt i32 %818, 0
  br i1 %819, label %826, label %820

820:                                              ; preds = %815
  %821 = tail call i32 @arch_asym_cpu_priority(i32 noundef %817) #14
  %822 = tail call i32 @arch_asym_cpu_priority(i32 noundef %818) #14
  %823 = icmp sgt i32 %821, %822
  %824 = select i1 %823, i32 %817, i32 %818
  %825 = load i32, ptr @nr_cpu_ids, align 4
  br label %826

826:                                              ; preds = %820, %815
  %827 = phi i32 [ %816, %815 ], [ %825, %820 ]
  %828 = phi i32 [ %817, %815 ], [ %824, %820 ]
  %829 = tail call i32 @cpumask_next(i32 noundef %817, ptr noundef %803) #18
  %830 = icmp ult i32 %829, %827
  br i1 %830, label %815, label %831

831:                                              ; preds = %826, %811
  %832 = phi i32 [ -1, %811 ], [ %828, %826 ]
  %833 = getelementptr inbounds %struct.sched_group, ptr %802, i32 0, i32 4
  store i32 %832, ptr %833, align 4
  br label %834

834:                                              ; preds = %831, %801
  %835 = load ptr, ptr %802, align 4
  %836 = load ptr, ptr %795, align 8
  %837 = icmp eq ptr %835, %836
  br i1 %837, label %838, label %801

838:                                              ; preds = %834
  %839 = getelementptr inbounds %struct.sched_group, ptr %835, i32 0, i32 3
  %840 = load ptr, ptr %839, align 4
  %841 = getelementptr inbounds %struct.sched_group_capacity, ptr %840, i32 0, i32 7
  %842 = tail call i32 @_find_first_bit_le(ptr noundef %841, i32 noundef 16) #14
  %843 = icmp eq i32 %842, %723
  br i1 %843, label %844, label %845

844:                                              ; preds = %838
  tail call void @update_group_capacity(ptr noundef nonnull %739, i32 noundef %723) #14
  br label %845

845:                                              ; preds = %844, %838
  %846 = load ptr, ptr %739, align 4
  %847 = icmp eq ptr %846, null
  br i1 %847, label %850, label %848

848:                                              ; preds = %845
  %849 = load i32, ptr %731, align 4
  br label %737

850:                                              ; preds = %845, %730, %722
  %851 = add nsw i32 %723, -1
  %852 = icmp sgt i32 %723, 0
  br i1 %852, label %722, label %853

853:                                              ; preds = %850
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %854 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #18
  %855 = load i32, ptr @nr_cpu_ids, align 4
  %856 = icmp ult i32 %854, %855
  br i1 %856, label %857, label %879

857:                                              ; preds = %853
  %858 = getelementptr inbounds %struct.root_domain, ptr %84, i32 0, i32 20
  br label %859

859:                                              ; preds = %873, %857
  %860 = phi i32 [ %854, %857 ], [ %874, %873 ]
  %861 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %860
  %862 = load i32, ptr %861, align 4
  %863 = add i32 %862, ptrtoint (ptr @runqueues to i32)
  %864 = inttoptr i32 %863 to ptr
  %865 = add i32 %862, %118
  %866 = inttoptr i32 %865 to ptr
  %867 = load ptr, ptr %866, align 4
  %868 = getelementptr inbounds %struct.rq, ptr %864, i32 0, i32 32
  %869 = load i32, ptr %868, align 4
  %870 = load volatile i32, ptr %858, align 4
  %871 = icmp ugt i32 %869, %870
  br i1 %871, label %872, label %873

872:                                              ; preds = %859
  store volatile i32 %869, ptr %858, align 4
  br label %873

873:                                              ; preds = %872, %859
  tail call fastcc void @cpu_attach_domain(ptr noundef %867, ptr noundef nonnull %84, i32 noundef %860)
  %874 = tail call i32 @cpumask_next(i32 noundef %860, ptr noundef %0) #18
  %875 = load i32, ptr @nr_cpu_ids, align 4
  %876 = icmp ult i32 %874, %875
  br i1 %876, label %859, label %877

877:                                              ; preds = %873
  %878 = inttoptr i32 %863 to ptr
  br label %879

879:                                              ; preds = %877, %853
  %880 = phi ptr [ null, %853 ], [ %878, %877 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  br i1 %115, label %881, label %882

881:                                              ; preds = %879
  tail call fastcc void @static_key_slow_inc()
  br label %882

882:                                              ; preds = %881, %879
  %883 = icmp eq ptr %880, null
  %884 = load i8, ptr @sched_debug_verbose, align 1
  %885 = icmp eq i8 %884, 0
  %886 = select i1 %883, i1 true, i1 %885
  br i1 %886, label %894, label %887

887:                                              ; preds = %882
  %888 = load i32, ptr @nr_cpu_ids, align 4
  %889 = getelementptr inbounds %struct.rq, ptr %880, i32 0, i32 29
  %890 = load ptr, ptr %889, align 8
  %891 = getelementptr inbounds %struct.root_domain, ptr %890, i32 0, i32 20
  %892 = load i32, ptr %891, align 4
  %893 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %888, ptr noundef %0, i32 noundef %892) #15
  br label %894

894:                                              ; preds = %887, %882, %619, %609, %173
  %895 = phi i32 [ -12, %173 ], [ 0, %882 ], [ 0, %887 ], [ -12, %609 ], [ -12, %619 ]
  %896 = load volatile i32, ptr %84, align 8
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %903

898:                                              ; preds = %894
  tail call void @cpupri_cleanup(ptr noundef %103) #14
  br label %899

899:                                              ; preds = %898, %102
  %900 = phi i32 [ %895, %898 ], [ -12, %102 ]
  tail call void @cpudl_cleanup(ptr noundef %99) #14
  br label %901

901:                                              ; preds = %899, %86
  %902 = phi i32 [ -12, %86 ], [ %900, %899 ]
  tail call void @kfree(ptr noundef nonnull %84) #14
  br label %903

903:                                              ; preds = %901, %894, %82
  %904 = phi i32 [ %895, %894 ], [ -12, %82 ], [ %902, %901 ]
  tail call void @free_percpu(ptr noundef nonnull %80) #14
  br label %905

905:                                              ; preds = %903, %79, %56, %47, %37, %32, %24, %20, %16, %11
  %906 = phi i32 [ %904, %903 ], [ -12, %79 ], [ -12, %56 ], [ -12, %47 ], [ -12, %37 ], [ -12, %32 ], [ -12, %11 ], [ -12, %16 ], [ -12, %20 ], [ -12, %24 ]
  %907 = load ptr, ptr @sched_domain_topology, align 4
  %908 = load ptr, ptr %907, align 4
  %909 = icmp eq ptr %908, null
  br i1 %909, label %1005, label %910

910:                                              ; preds = %994, %905
  %911 = phi ptr [ %1002, %994 ], [ %907, %905 ]
  %912 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %911, i32 0, i32 4
  %913 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #18
  %914 = load i32, ptr @nr_cpu_ids, align 4
  %915 = icmp ult i32 %913, %914
  br i1 %915, label %916, label %994

916:                                              ; preds = %910
  %917 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %911, i32 0, i32 4, i32 1
  %918 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %911, i32 0, i32 4, i32 2
  %919 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %911, i32 0, i32 4, i32 3
  br label %920

920:                                              ; preds = %990, %916
  %921 = phi i32 [ %913, %916 ], [ %991, %990 ]
  %922 = load ptr, ptr %912, align 4
  %923 = icmp eq ptr %922, null
  br i1 %923, label %960, label %924

924:                                              ; preds = %920
  %925 = ptrtoint ptr %922 to i32
  %926 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %921
  %927 = load i32, ptr %926, align 4
  %928 = add i32 %927, %925
  %929 = inttoptr i32 %928 to ptr
  %930 = load ptr, ptr %929, align 4
  %931 = icmp eq ptr %930, null
  br i1 %931, label %958, label %932

932:                                              ; preds = %924
  %933 = getelementptr inbounds %struct.sched_domain, ptr %930, i32 0, i32 9
  %934 = load i32, ptr %933, align 4
  %935 = and i32 %934, 4096
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %958, label %937

937:                                              ; preds = %932
  %938 = getelementptr inbounds %struct.sched_domain, ptr %930, i32 0, i32 2
  %939 = load ptr, ptr %938, align 8
  %940 = icmp eq ptr %939, null
  br i1 %940, label %958, label %941

941:                                              ; preds = %949, %937
  %942 = phi ptr [ %943, %949 ], [ %939, %937 ]
  %943 = load ptr, ptr %942, align 4
  %944 = getelementptr inbounds %struct.sched_group, ptr %942, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %944) #14, !srcloc !10
  %945 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %944, ptr %944, i32 1, ptr elementtype(i32) %944) #14, !srcloc !11
  %946 = extractvalue { i32, i32 } %945, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %948, label %949

948:                                              ; preds = %941
  tail call void @kfree(ptr noundef %942) #14
  br label %949

949:                                              ; preds = %948, %941
  %950 = icmp eq ptr %943, %939
  br i1 %950, label %951, label %941

951:                                              ; preds = %949
  %952 = load ptr, ptr %912, align 4
  %953 = load i32, ptr %926, align 4
  %954 = ptrtoint ptr %952 to i32
  %955 = add i32 %953, %954
  %956 = inttoptr i32 %955 to ptr
  %957 = load ptr, ptr %956, align 4
  br label %958

958:                                              ; preds = %951, %937, %932, %924
  %959 = phi ptr [ %957, %951 ], [ %930, %937 ], [ null, %924 ], [ %930, %932 ]
  tail call void @kfree(ptr noundef %959) #14
  br label %960

960:                                              ; preds = %958, %920
  %961 = load ptr, ptr %917, align 4
  %962 = icmp eq ptr %961, null
  br i1 %962, label %970, label %963

963:                                              ; preds = %960
  %964 = ptrtoint ptr %961 to i32
  %965 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %921
  %966 = load i32, ptr %965, align 4
  %967 = add i32 %966, %964
  %968 = inttoptr i32 %967 to ptr
  %969 = load ptr, ptr %968, align 4
  tail call void @kfree(ptr noundef %969) #14
  br label %970

970:                                              ; preds = %963, %960
  %971 = load ptr, ptr %918, align 4
  %972 = icmp eq ptr %971, null
  br i1 %972, label %980, label %973

973:                                              ; preds = %970
  %974 = ptrtoint ptr %971 to i32
  %975 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %921
  %976 = load i32, ptr %975, align 4
  %977 = add i32 %976, %974
  %978 = inttoptr i32 %977 to ptr
  %979 = load ptr, ptr %978, align 4
  tail call void @kfree(ptr noundef %979) #14
  br label %980

980:                                              ; preds = %973, %970
  %981 = load ptr, ptr %919, align 4
  %982 = icmp eq ptr %981, null
  br i1 %982, label %990, label %983

983:                                              ; preds = %980
  %984 = ptrtoint ptr %981 to i32
  %985 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %921
  %986 = load i32, ptr %985, align 4
  %987 = add i32 %986, %984
  %988 = inttoptr i32 %987 to ptr
  %989 = load ptr, ptr %988, align 4
  tail call void @kfree(ptr noundef %989) #14
  br label %990

990:                                              ; preds = %983, %980
  %991 = tail call i32 @cpumask_next(i32 noundef %921, ptr noundef %0) #18
  %992 = load i32, ptr @nr_cpu_ids, align 4
  %993 = icmp ult i32 %991, %992
  br i1 %993, label %920, label %994

994:                                              ; preds = %990, %910
  %995 = load ptr, ptr %912, align 4
  tail call void @free_percpu(ptr noundef %995) #14
  store ptr null, ptr %912, align 4
  %996 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %911, i32 0, i32 4, i32 1
  %997 = load ptr, ptr %996, align 4
  tail call void @free_percpu(ptr noundef %997) #14
  store ptr null, ptr %996, align 4
  %998 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %911, i32 0, i32 4, i32 2
  %999 = load ptr, ptr %998, align 4
  tail call void @free_percpu(ptr noundef %999) #14
  store ptr null, ptr %998, align 4
  %1000 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %911, i32 0, i32 4, i32 3
  %1001 = load ptr, ptr %1000, align 4
  tail call void @free_percpu(ptr noundef %1001) #14
  store ptr null, ptr %1000, align 4
  %1002 = getelementptr %struct.sched_domain_topology_level, ptr %911, i32 1
  %1003 = load ptr, ptr %1002, align 4
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1005, label %910

1005:                                             ; preds = %994, %905, %6
  %1006 = phi i32 [ %906, %905 ], [ -12, %6 ], [ %906, %994 ]
  ret i32 %1006
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @partition_sched_domains_locked(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.sched_domain_attr, align 4
  %5 = alloca %struct.sched_domain_attr, align 4
  %6 = tail call i32 @topology_update_cpu_topology()
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call fastcc void @asym_cpu_capacity_scan()
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %9
  %12 = icmp ne ptr %2, null
  %13 = load i1, ptr @partition_sched_domains_locked.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !16

16:                                               ; preds = %11
  store i1 true, ptr @partition_sched_domains_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2437, i32 noundef 9, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 4) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #14
  %23 = load i32, ptr @__cpu_active_mask, align 4
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %23, 65535
  %26 = and i32 %25, %24
  store i32 %26, ptr %19, align 8
  br label %27

27:                                               ; preds = %21, %17, %9
  %28 = phi i32 [ 1, %21 ], [ %0, %9 ], [ 0, %17 ]
  %29 = phi ptr [ %19, %21 ], [ %1, %9 ], [ null, %17 ]
  %30 = load i32, ptr @ndoms_cur, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %101

32:                                               ; preds = %27
  %33 = icmp sgt i32 %28, 0
  %34 = select i1 %33, i1 %7, i1 false
  %35 = icmp ne ptr %2, null
  br label %36

36:                                               ; preds = %97, %32
  %37 = phi i32 [ 0, %32 ], [ %98, %97 ]
  %38 = load ptr, ptr @doms_cur, align 4
  br i1 %34, label %39, label %72

39:                                               ; preds = %36
  %40 = getelementptr [1 x %struct.cpumask], ptr %38, i32 %37
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr @dattr_cur, align 4
  %43 = icmp ne ptr %42, null
  %44 = or i1 %35, %43
  %45 = getelementptr %struct.sched_domain_attr, ptr %42, i32 %37
  %46 = select i1 %43, ptr %45, ptr %5
  br label %47

47:                                               ; preds = %69, %39
  %48 = phi i32 [ 0, %39 ], [ %70, %69 ]
  %49 = getelementptr [1 x %struct.cpumask], ptr %29, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %41
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  br i1 %44, label %56, label %55

55:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %61

56:                                               ; preds = %54
  store i32 -1, ptr %5, align 4
  %57 = getelementptr %struct.sched_domain_attr, ptr %2, i32 %48
  %58 = select i1 %35, ptr %57, ptr %5
  %59 = call i32 @bcmp(ptr noundef dereferenceable(4) %46, ptr noundef dereferenceable(4) %58, i32 4) #14
  %60 = icmp eq i32 %59, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br i1 %60, label %61, label %69

61:                                               ; preds = %56, %55
  %62 = tail call i32 @_find_first_bit_le(ptr noundef %40, i32 noundef 16) #14
  %63 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, ptrtoint (ptr @runqueues to i32)
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.rq, ptr %66, i32 0, i32 29
  %68 = load ptr, ptr %67, align 8
  tail call void @dl_clear_root_domain(ptr noundef %68) #14
  br label %97

69:                                               ; preds = %56, %47
  %70 = add nuw nsw i32 %48, 1
  %71 = icmp slt i32 %70, %28
  br i1 %71, label %47, label %72

72:                                               ; preds = %69, %36
  %73 = getelementptr [1 x %struct.cpumask], ptr %38, i32 %37
  %74 = tail call i32 @_find_first_bit_le(ptr noundef %73, i32 noundef 16) #14
  %75 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, ptrtoint (ptr @sd_asym_cpucapacity to i32)
  %78 = inttoptr i32 %77 to ptr
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %72
  %82 = load i8, ptr @static_key_initialized, align 1, !range !15
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %85, !prof !16

84:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @sched_asym_cpucapacity) #14
  br label %85

85:                                               ; preds = %84, %81
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @sched_asym_cpucapacity) #14, !srcloc !10
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sched_asym_cpucapacity, ptr nonnull @sched_asym_cpucapacity, i32 1, ptr nonnull elementtype(i32) @sched_asym_cpucapacity) #14, !srcloc !24
  br label %87

87:                                               ; preds = %85, %72
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %88 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %73) #18
  %89 = load i32, ptr @nr_cpu_ids, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %91, %87
  %92 = phi i32 [ %93, %91 ], [ %88, %87 ]
  tail call fastcc void @cpu_attach_domain(ptr noundef null, ptr noundef nonnull @def_root_domain, i32 noundef %92) #14
  %93 = tail call i32 @cpumask_next(i32 noundef %92, ptr noundef %73) #18
  %94 = load i32, ptr @nr_cpu_ids, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %91, label %96

96:                                               ; preds = %91, %87
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  br label %97

97:                                               ; preds = %96, %61
  %98 = add nuw nsw i32 %37, 1
  %99 = load i32, ptr @ndoms_cur, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %36, label %101

101:                                              ; preds = %97, %27
  %102 = phi i32 [ %30, %27 ], [ %99, %97 ]
  %103 = icmp eq ptr %29, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #14
  %106 = load i32, ptr @__cpu_active_mask, align 4
  %107 = load i32, ptr %105, align 4
  %108 = and i32 %106, 65535
  %109 = and i32 %108, %107
  store i32 %109, ptr @fallback_doms, align 4
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i32 [ %102, %101 ], [ 0, %104 ]
  %112 = phi ptr [ %29, %101 ], [ @fallback_doms, %104 ]
  %113 = icmp sgt i32 %0, 0
  br i1 %113, label %114, label %155

114:                                              ; preds = %110
  %115 = icmp sgt i32 %111, 0
  %116 = select i1 %115, i1 %7, i1 false
  %117 = icmp ne ptr %2, null
  %118 = icmp eq ptr %2, null
  br label %119

119:                                              ; preds = %152, %114
  %120 = phi i32 [ 0, %114 ], [ %153, %152 ]
  br i1 %116, label %121, label %147

121:                                              ; preds = %119
  %122 = getelementptr [1 x %struct.cpumask], ptr %112, i32 %120
  %123 = load ptr, ptr @doms_cur, align 4
  %124 = load ptr, ptr @dattr_cur, align 4
  %125 = icmp ne ptr %124, null
  %126 = or i1 %117, %125
  %127 = getelementptr %struct.sched_domain_attr, ptr %2, i32 %120
  %128 = select i1 %117, ptr %127, ptr %4
  br label %129

129:                                              ; preds = %144, %121
  %130 = phi i32 [ 0, %121 ], [ %145, %144 ]
  %131 = getelementptr [1 x %struct.cpumask], ptr %123, i32 %130
  %132 = load i32, ptr %122, align 4
  %133 = load i32, ptr %131, align 4
  %134 = xor i32 %133, %132
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  br i1 %126, label %139, label %138

138:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %152

139:                                              ; preds = %137
  store i32 -1, ptr %4, align 4
  %140 = getelementptr %struct.sched_domain_attr, ptr %124, i32 %130
  %141 = select i1 %125, ptr %140, ptr %4
  %142 = call i32 @bcmp(ptr noundef dereferenceable(4) %128, ptr noundef dereferenceable(4) %141, i32 4) #14
  %143 = icmp eq i32 %142, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br i1 %143, label %152, label %144

144:                                              ; preds = %139, %129
  %145 = add nuw nsw i32 %130, 1
  %146 = icmp slt i32 %145, %111
  br i1 %146, label %129, label %147

147:                                              ; preds = %144, %119
  %148 = getelementptr [1 x %struct.cpumask], ptr %112, i32 %120
  %149 = getelementptr %struct.sched_domain_attr, ptr %2, i32 %120
  %150 = select i1 %118, ptr null, ptr %149
  %151 = tail call fastcc i32 @build_sched_domains(ptr noundef %148, ptr noundef %150)
  br label %152

152:                                              ; preds = %147, %139, %138
  %153 = add nuw nsw i32 %120, 1
  %154 = icmp eq i32 %153, %0
  br i1 %154, label %155, label %119

155:                                              ; preds = %152, %110
  %156 = load ptr, ptr @doms_cur, align 4
  %157 = icmp eq ptr %156, @fallback_doms
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call void @kfree(ptr noundef %156) #14
  br label %159

159:                                              ; preds = %158, %155
  %160 = load ptr, ptr @dattr_cur, align 4
  tail call void @kfree(ptr noundef %160) #14
  store ptr %112, ptr @doms_cur, align 4
  store ptr %2, ptr @dattr_cur, align 4
  store i32 %0, ptr @ndoms_cur, align 4
  tail call void @update_sched_domain_debugfs() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dl_clear_root_domain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_sched_domain_debugfs() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @partition_sched_domains(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @sched_domains_mutex) #14
  tail call void @partition_sched_domains_locked(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef nonnull @sched_domains_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rto_push_irq_work_func(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_bw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpudl_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @cpu_cpu_mask(i32 noundef %0) #6 {
  ret ptr @__cpu_online_mask
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpu_attach_domain(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %107, label %8

8:                                                ; preds = %70, %3
  %9 = phi ptr [ %71, %70 ], [ %0, %3 ]
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sched_domain, ptr %9, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sched_domain, ptr %10, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sched_domain, ptr %10, i32 0, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = tail call i32 @__sw_hweight32(i32 noundef %19) #14
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %54, label %22

22:                                               ; preds = %12
  %23 = load i32, ptr %15, align 4
  %24 = and i32 %23, 16367
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sched_domain, ptr %10, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %28, %29
  %31 = and i32 %23, 16
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %54, label %37

34:                                               ; preds = %22
  %35 = and i32 %23, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %34, %26
  %38 = getelementptr inbounds %struct.sched_domain, ptr %9, i32 0, i32 21
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %17, align 4
  %41 = xor i32 %40, %39
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.sched_domain, ptr %10, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %46, %47
  %49 = and i32 %16, -16368
  %50 = select i1 %48, i32 %49, i32 %16
  %51 = xor i32 %14, -1
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %44, %34, %26, %12
  %55 = load ptr, ptr %10, align 8
  store ptr %55, ptr %9, align 8
  %56 = load ptr, ptr %10, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.sched_domain, ptr %56, i32 0, i32 1
  store ptr %9, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, ptr %15, align 4
  %62 = and i32 %61, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %13, align 4
  %66 = or i32 %65, 2048
  store i32 %66, ptr %13, align 4
  br label %67

67:                                               ; preds = %64, %60
  tail call fastcc void @destroy_sched_domain(ptr noundef nonnull %10)
  br label %70

68:                                               ; preds = %44, %37
  %69 = load ptr, ptr %9, align 8
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi ptr [ %9, %67 ], [ %69, %68 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %8

73:                                               ; preds = %70, %8
  %74 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 21
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 65535
  %77 = tail call i32 @__sw_hweight32(i32 noundef %76) #14
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %95, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 16367
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %86, %87
  %89 = and i32 %81, 16
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %95, label %107

92:                                               ; preds = %79
  %93 = and i32 %81, 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92, %84, %73
  %96 = load ptr, ptr %0, align 8
  tail call fastcc void @destroy_sched_domain(ptr noundef nonnull %0)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.sched_domain, ptr %96, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.sched_group, ptr %100, i32 0, i32 5
  br label %102

102:                                              ; preds = %102, %98
  store i32 0, ptr %101, align 4
  %103 = load ptr, ptr %99, align 8
  %104 = icmp eq ptr %100, %103
  br i1 %104, label %105, label %102

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sched_domain, ptr %96, i32 0, i32 1
  store ptr null, ptr %106, align 4
  br label %107

107:                                              ; preds = %105, %95, %92, %84, %3
  %108 = phi ptr [ %96, %105 ], [ null, %95 ], [ %0, %92 ], [ %0, %84 ], [ null, %3 ]
  %109 = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %110 = inttoptr i32 %109 to ptr
  %111 = load i8, ptr @sched_debug_verbose, align 1, !range !15
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %300, label %113

113:                                              ; preds = %107
  %114 = icmp eq ptr %108, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %2) #15
  br label %300

117:                                              ; preds = %113
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %2) #15
  %119 = lshr i32 %2, 5
  %120 = and i32 %2, 31
  %121 = shl nuw i32 1, %120
  br label %122

122:                                              ; preds = %297, %117
  %123 = phi i32 [ 0, %117 ], [ %195, %297 ]
  %124 = phi ptr [ %108, %117 ], [ %298, %297 ]
  %125 = getelementptr inbounds %struct.sched_domain, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %127 = getelementptr inbounds %struct.sched_domain, ptr %124, i32 0, i32 9
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %4, align 4
  store i32 0, ptr @sched_domains_tmpmask, align 4
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %123, ptr noundef nonnull @.str.27, i32 noundef %123) #15
  %130 = load i32, ptr @nr_cpu_ids, align 4
  %131 = getelementptr inbounds %struct.sched_domain, ptr %124, i32 0, i32 21
  %132 = getelementptr inbounds %struct.sched_domain, ptr %124, i32 0, i32 17
  %133 = load ptr, ptr %132, align 8
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %130, ptr noundef %131, ptr noundef %133) #15
  %135 = getelementptr i32, ptr %131, i32 %119
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %136, %121
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %2) #15
  br label %141

141:                                              ; preds = %139, %122
  %142 = icmp eq ptr %126, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.sched_group, ptr %126, i32 0, i32 6
  %145 = getelementptr i32, ptr %144, i32 %119
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %146, %121
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %2) #15
  br label %151

151:                                              ; preds = %149, %143, %141
  %152 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 14, i32 noundef 0) #14
  %153 = icmp ult i32 %152, 14
  br i1 %153, label %154, label %194

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.sched_domain, ptr %124, i32 0, i32 1
  br label %156

156:                                              ; preds = %190, %154
  %157 = phi i32 [ %152, %154 ], [ %192, %190 ]
  %158 = shl nuw nsw i32 1, %157
  %159 = getelementptr [14 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %157
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %156
  %164 = load ptr, ptr %155, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %175, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.sched_domain, ptr %164, i32 0, i32 9
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, %158
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = getelementptr [14 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %157, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %173) #15
  br label %175

175:                                              ; preds = %171, %166, %163, %156
  %176 = and i32 %160, 2
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %124, align 8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %190, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.sched_domain, ptr %179, i32 0, i32 9
  %183 = load i32, ptr %182, align 4
  %184 = and i32 %183, %158
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = getelementptr [14 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %157, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %188) #15
  br label %190

190:                                              ; preds = %186, %181, %178, %175
  %191 = add nuw nsw i32 %157, 1
  %192 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 14, i32 noundef %191) #14
  %193 = icmp ult i32 %192, 14
  br i1 %193, label %156, label %194

194:                                              ; preds = %190, %151
  %195 = add i32 %123, 1
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %195, ptr noundef nonnull @.str.27) #15
  %197 = getelementptr inbounds %struct.sched_domain, ptr %124, i32 0, i32 1
  br label %198

198:                                              ; preds = %266, %194
  %199 = phi ptr [ %126, %194 ], [ %263, %266 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %270, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.sched_group, ptr %199, i32 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, 65535
  %205 = call i32 @__sw_hweight32(i32 noundef %204) #14
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %270, label %207

207:                                              ; preds = %201
  %208 = load i32, ptr %127, align 4
  %209 = and i32 %208, 4096
  %210 = icmp eq i32 %209, 0
  %211 = load i32, ptr @sched_domains_tmpmask, align 4
  %212 = load i32, ptr %202, align 4
  br i1 %210, label %213, label %217

213:                                              ; preds = %207
  %214 = and i32 %211, 65535
  %215 = and i32 %214, %212
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %270

217:                                              ; preds = %213, %207
  %218 = or i32 %212, %211
  store i32 %218, ptr @sched_domains_tmpmask, align 4
  %219 = getelementptr inbounds %struct.sched_group, ptr %199, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.sched_group_capacity, ptr %220, i32 0, i32 6
  %222 = load i32, ptr %221, align 4
  %223 = load i32, ptr @nr_cpu_ids, align 4
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %222, i32 noundef %223, ptr noundef %202) #15
  %225 = load i32, ptr %127, align 4
  %226 = and i32 %225, 4096
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %217
  %229 = load ptr, ptr %219, align 4
  %230 = getelementptr inbounds %struct.sched_group_capacity, ptr %229, i32 0, i32 7
  %231 = load i32, ptr %230, align 4
  %232 = load i32, ptr %202, align 4
  %233 = xor i32 %232, %231
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %228
  %237 = load i32, ptr @nr_cpu_ids, align 4
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %237, ptr noundef %230) #15
  br label %239

239:                                              ; preds = %236, %228, %217
  %240 = load ptr, ptr %219, align 4
  %241 = getelementptr inbounds %struct.sched_group_capacity, ptr %240, i32 0, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 1024
  br i1 %243, label %246, label %244

244:                                              ; preds = %239
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %242) #15
  br label %246

246:                                              ; preds = %244, %239
  %247 = load ptr, ptr %125, align 8
  %248 = icmp eq ptr %199, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %246
  %250 = load ptr, ptr %197, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %261, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.sched_domain, ptr %250, i32 0, i32 21
  %254 = load i32, ptr %253, align 4
  %255 = load i32, ptr %202, align 4
  %256 = xor i32 %255, %254
  %257 = and i32 %256, 65535
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %252
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  br label %261

261:                                              ; preds = %259, %252, %249, %246
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  %263 = load ptr, ptr %199, align 4
  %264 = load ptr, ptr %125, align 8
  %265 = icmp eq ptr %263, %264
  br i1 %265, label %275, label %266

266:                                              ; preds = %261
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  %268 = load ptr, ptr %125, align 8
  %269 = icmp eq ptr %263, %268
  br i1 %269, label %275, label %198

270:                                              ; preds = %213, %201, %198
  %271 = phi ptr [ @.str.34, %198 ], [ @.str.36, %201 ], [ @.str.36, %213 ]
  %272 = phi ptr [ @.str.35, %198 ], [ @.str.37, %201 ], [ @.str.38, %213 ]
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %271) #15
  %274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %272) #15
  br label %275

275:                                              ; preds = %270, %266, %261
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  %277 = load i32, ptr %131, align 4
  %278 = load i32, ptr @sched_domains_tmpmask, align 4
  %279 = xor i32 %278, %277
  %280 = and i32 %279, 65535
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %275
  %283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #15
  br label %284

284:                                              ; preds = %282, %275
  %285 = load ptr, ptr %124, align 8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %297, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.sched_domain, ptr %285, i32 0, i32 21
  %289 = load i32, ptr @sched_domains_tmpmask, align 4
  %290 = load i32, ptr %288, align 4
  %291 = xor i32 %290, -1
  %292 = and i32 %289, 65535
  %293 = and i32 %292, %291
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %287
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  br label %297

297:                                              ; preds = %295, %287, %284
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %298 = load ptr, ptr %124, align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %122

300:                                              ; preds = %297, %115, %107
  call void @rq_attach_root(ptr noundef %110, ptr noundef %1)
  %301 = getelementptr inbounds %struct.rq, ptr %110, i32 0, i32 30
  %302 = load ptr, ptr %301, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  store volatile ptr %108, ptr %301, align 4
  call void @dirty_sched_domain_sysctl(i32 noundef %2) #14
  %303 = icmp eq ptr %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.sched_domain, ptr %302, i32 0, i32 18
  call void @call_rcu(ptr noundef %305, ptr noundef nonnull @destroy_sched_domains_rcu) #14
  br label %306

306:                                              ; preds = %304, %300
  %307 = load i32, ptr %5, align 4
  %308 = add i32 %307, ptrtoint (ptr @runqueues to i32)
  %309 = inttoptr i32 %308 to ptr
  %310 = getelementptr inbounds %struct.rq, ptr %309, i32 0, i32 30
  %311 = load volatile ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %335, label %313

313:                                              ; preds = %306
  %314 = getelementptr inbounds %struct.sched_domain, ptr %311, i32 0, i32 9
  %315 = load i32, ptr %314, align 4
  %316 = and i32 %315, 256
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %335, label %323

318:                                              ; preds = %323
  %319 = getelementptr inbounds %struct.sched_domain, ptr %325, i32 0, i32 9
  %320 = load i32, ptr %319, align 4
  %321 = and i32 %320, 256
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %318, %313
  %324 = phi ptr [ %325, %318 ], [ %311, %313 ]
  %325 = load ptr, ptr %324, align 8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %318

327:                                              ; preds = %323, %318
  %328 = getelementptr inbounds %struct.sched_domain, ptr %324, i32 0, i32 21
  %329 = call i32 @_find_first_bit_le(ptr noundef %328, i32 noundef 16) #14
  %330 = load i32, ptr %328, align 4
  %331 = and i32 %330, 65535
  %332 = call i32 @__sw_hweight32(i32 noundef %331) #14
  %333 = getelementptr inbounds %struct.sched_domain, ptr %324, i32 0, i32 19
  %334 = load ptr, ptr %333, align 4
  br label %335

335:                                              ; preds = %327, %313, %306
  %336 = phi ptr [ %324, %327 ], [ null, %306 ], [ null, %313 ]
  %337 = phi i32 [ %332, %327 ], [ 1, %306 ], [ 1, %313 ]
  %338 = phi i32 [ %329, %327 ], [ %2, %306 ], [ %2, %313 ]
  %339 = phi ptr [ %334, %327 ], [ null, %306 ], [ null, %313 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %340 = load i32, ptr %5, align 4
  %341 = add i32 %340, ptrtoint (ptr @sd_llc to i32)
  %342 = inttoptr i32 %341 to ptr
  store volatile ptr %336, ptr %342, align 4
  %343 = load i32, ptr %5, align 4
  %344 = add i32 %343, ptrtoint (ptr @sd_llc_size to i32)
  %345 = inttoptr i32 %344 to ptr
  store i32 %337, ptr %345, align 4
  %346 = load i32, ptr %5, align 4
  %347 = add i32 %346, ptrtoint (ptr @sd_llc_id to i32)
  %348 = inttoptr i32 %347 to ptr
  store i32 %338, ptr %348, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %349 = load i32, ptr %5, align 4
  %350 = add i32 %349, ptrtoint (ptr @sd_llc_shared to i32)
  %351 = inttoptr i32 %350 to ptr
  store volatile ptr %339, ptr %351, align 4
  %352 = load i32, ptr %5, align 4
  %353 = add i32 %352, ptrtoint (ptr @runqueues to i32)
  %354 = inttoptr i32 %353 to ptr
  %355 = getelementptr inbounds %struct.rq, ptr %354, i32 0, i32 30
  %356 = load volatile ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %367, label %358

358:                                              ; preds = %364, %335
  %359 = phi ptr [ %365, %364 ], [ %356, %335 ]
  %360 = getelementptr inbounds %struct.sched_domain, ptr %359, i32 0, i32 9
  %361 = load i32, ptr %360, align 4
  %362 = and i32 %361, 8192
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = load ptr, ptr %359, align 8
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %358

367:                                              ; preds = %364, %358, %335
  %368 = phi ptr [ null, %335 ], [ %359, %358 ], [ null, %364 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %369 = load i32, ptr %5, align 4
  %370 = add i32 %369, ptrtoint (ptr @sd_numa to i32)
  %371 = inttoptr i32 %370 to ptr
  store volatile ptr %368, ptr %371, align 4
  %372 = load i32, ptr %5, align 4
  %373 = add i32 %372, ptrtoint (ptr @runqueues to i32)
  %374 = inttoptr i32 %373 to ptr
  %375 = getelementptr inbounds %struct.rq, ptr %374, i32 0, i32 30
  %376 = load volatile ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %392, label %378

378:                                              ; preds = %367
  %379 = getelementptr inbounds %struct.sched_domain, ptr %376, i32 0, i32 9
  %380 = load i32, ptr %379, align 4
  %381 = and i32 %380, 1024
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %392, label %388

383:                                              ; preds = %388
  %384 = getelementptr inbounds %struct.sched_domain, ptr %390, i32 0, i32 9
  %385 = load i32, ptr %384, align 4
  %386 = and i32 %385, 1024
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %383, %378
  %389 = phi ptr [ %390, %383 ], [ %376, %378 ]
  %390 = load ptr, ptr %389, align 8
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %383

392:                                              ; preds = %388, %383, %378, %367
  %393 = phi ptr [ null, %367 ], [ null, %378 ], [ %389, %383 ], [ %389, %388 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %394 = load i32, ptr %5, align 4
  %395 = add i32 %394, ptrtoint (ptr @sd_asym_packing to i32)
  %396 = inttoptr i32 %395 to ptr
  store volatile ptr %393, ptr %396, align 4
  %397 = load i32, ptr %5, align 4
  %398 = add i32 %397, ptrtoint (ptr @runqueues to i32)
  %399 = inttoptr i32 %398 to ptr
  %400 = getelementptr inbounds %struct.rq, ptr %399, i32 0, i32 30
  %401 = load volatile ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %412, label %403

403:                                              ; preds = %409, %392
  %404 = phi ptr [ %410, %409 ], [ %401, %392 ]
  %405 = getelementptr inbounds %struct.sched_domain, ptr %404, i32 0, i32 9
  %406 = load i32, ptr %405, align 4
  %407 = and i32 %406, 64
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load ptr, ptr %404, align 8
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %403

412:                                              ; preds = %409, %403, %392
  %413 = phi ptr [ null, %392 ], [ %404, %403 ], [ null, %409 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  %414 = load i32, ptr %5, align 4
  %415 = add i32 %414, ptrtoint (ptr @sd_asym_cpucapacity to i32)
  %416 = inttoptr i32 %415 to ptr
  store volatile ptr %413, ptr %416, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @static_key_slow_inc() unnamed_addr #11 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !15
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !16

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @sched_asym_cpucapacity) #14
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @sched_asym_cpucapacity) #14, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sched_asym_cpucapacity, ptr nonnull @sched_asym_cpucapacity, i32 1, ptr nonnull elementtype(i32) @sched_asym_cpucapacity) #14, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_group_capacity(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_asym_cpu_priority(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @destroy_sched_domain(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %21, %1
  %6 = phi ptr [ %7, %21 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sched_group, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #14, !srcloc !10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #14, !srcloc !11
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %14) #14
  br label %15

15:                                               ; preds = %13, %5
  %16 = getelementptr inbounds %struct.sched_group, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #14, !srcloc !10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #14, !srcloc !11
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @kfree(ptr noundef %6) #14
  br label %21

21:                                               ; preds = %20, %15
  %22 = icmp eq ptr %7, %3
  br i1 %22, label %23, label %5

23:                                               ; preds = %21, %1
  %24 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #14, !srcloc !10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #14, !srcloc !11
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %32) #14
  br label %33

33:                                               ; preds = %31, %27, %23
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dirty_sched_domain_sysctl(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @destroy_sched_domains_rcu(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8
  tail call fastcc void @destroy_sched_domain(ptr noundef nonnull %5)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly willreturn }

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
!8 = !{i64 692016, i64 692077}
!9 = !{i64 2148328776}
!10 = !{i64 663269, i64 2148164835, i64 2148164861, i64 2148164908, i64 2148164930, i64 2148164958, i64 2148164978}
!11 = !{i64 2148231138, i64 2148231170, i64 2148231199, i64 2148231233, i64 2148231264, i64 2148231287}
!12 = !{i64 2148328979}
!13 = !{i64 2148228097, i64 2148228123, i64 2148228152, i64 2148228186, i64 2148228217, i64 2148228240}
!14 = !{i64 695033}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2146410443, i32 1073205}
!18 = !{i64 2148325943}
!19 = !{i64 2148228781, i64 2148228813, i64 2148228842, i64 2148228876, i64 2148228907, i64 2148228930}
!20 = !{i64 2148326146}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149085283}
!23 = !{i64 2149085500}
!24 = !{i64 2148230454, i64 2148230480, i64 2148230509, i64 2148230543, i64 2148230574, i64 2148230597}
!25 = !{i64 2156658554}
!26 = !{i64 2156443383}
!27 = !{i64 2156492075}
!28 = !{i64 2156538394}
!29 = !{i64 2156586243}
!30 = !{i64 2156636452}
