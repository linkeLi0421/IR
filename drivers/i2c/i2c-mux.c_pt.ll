; ModuleID = '/llk/IR/drivers/i2c/i2c-mux.c_pt.bc'
source_filename = "../drivers/i2c/i2c-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_root_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_root_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_root_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_mux_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_mux_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_mux_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_mux_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_mux_add_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_mux_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_mux_del_adapters:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_mux_del_adapters\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_mux_del_adapters:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.i2c_mux_priv = type { %struct.i2c_adapter, %struct.i2c_algorithm, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@__kstrtab_i2c_root_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_root_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_root_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_root_adapter to i32), ptr @__kstrtab_i2c_root_adapter, ptr @__kstrtabns_i2c_root_adapter }, section "___ksymtab_gpl+i2c_root_adapter", align 4
@__kstrtab_i2c_mux_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_mux_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_mux_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_mux_alloc to i32), ptr @__kstrtab_i2c_mux_alloc, ptr @__kstrtabns_i2c_mux_alloc }, section "___ksymtab_gpl+i2c_mux_alloc", align 4
@.str = private unnamed_addr constant [35 x i8] c"No room for more i2c-mux adapters\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"i2c-%d-mux (chan_id %d)\00", align 1
@i2c_mux_lock_ops = internal constant %struct.i2c_lock_operations { ptr @i2c_mux_lock_bus, ptr @i2c_mux_trylock_bus, ptr @i2c_mux_unlock_bus }, align 4
@i2c_parent_lock_ops = internal constant %struct.i2c_lock_operations { ptr @i2c_parent_lock_bus, ptr @i2c_parent_trylock_bus, ptr @i2c_parent_unlock_bus }, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Segment %d behind mux can't share classes with ancestors\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"i2c-arb\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"i2c-gate\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"i2c-mux\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"failed to add mux-adapter %u as bus %u (error=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"failed to add mux-adapter %u (error=%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"mux_device\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"drivers/i2c/i2c-mux.c\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"can't create symlink to mux device\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"channel-%u\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"can't create symlink to channel %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Added multiplexed i2c bus %d\0A\00", align 1
@__kstrtab_i2c_mux_add_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_mux_add_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_mux_add_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_mux_add_adapter to i32), ptr @__kstrtab_i2c_mux_add_adapter, ptr @__kstrtabns_i2c_mux_add_adapter }, section "___ksymtab_gpl+i2c_mux_add_adapter", align 4
@__kstrtab_i2c_mux_del_adapters = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_mux_del_adapters = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_mux_del_adapters = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_mux_del_adapters to i32), ptr @__kstrtab_i2c_mux_del_adapters, ptr @__kstrtabns_i2c_mux_del_adapters }, section "___ksymtab_gpl+i2c_mux_del_adapters", align 4
@__UNIQUE_ID_author247 = internal constant [52 x i8] c"i2c_mux.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [58 x i8] c"i2c_mux.description=I2C driver for multiplexed I2C busses\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [33 x i8] c"i2c_mux.file=drivers/i2c/i2c-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [23 x i8] c"i2c_mux.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__ksymtab_i2c_mux_add_adapter, ptr @__ksymtab_i2c_mux_alloc, ptr @__ksymtab_i2c_mux_del_adapters, ptr @__ksymtab_i2c_root_adapter], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @i2c_root_adapter(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %8, %1
  %4 = phi ptr [ %10, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @i2c_adapter_type
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %3

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %4, i32 -64
  %14 = getelementptr i8, ptr %4, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %19, @i2c_adapter_type
  %21 = getelementptr i8, ptr %15, i32 -64
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %37, label %31

24:                                               ; preds = %31
  %25 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ne ptr %26, @i2c_adapter_type
  %28 = getelementptr i8, ptr %35, i32 -64
  %29 = icmp eq ptr %28, null
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %24, %17
  %32 = phi ptr [ %28, %24 ], [ %21, %17 ]
  %33 = phi ptr [ %35, %24 ], [ %15, %17 ]
  %34 = getelementptr i8, ptr %33, i32 36
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24

37:                                               ; preds = %31, %24, %17, %12, %8, %1
  %38 = phi ptr [ %13, %12 ], [ null, %1 ], [ %13, %17 ], [ %32, %31 ], [ %32, %24 ], [ null, %8 ]
  ret ptr %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_mux_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #2 {
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #9
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %11 = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 32) #9
  %12 = select i1 %9, i32 -1, i32 %11
  %13 = add i32 %12, %3
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %13, i32 noundef 3520) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr %struct.i2c_mux_core, ptr %14, i32 0, i32 8, i32 %2
  %20 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %16
  store ptr %0, ptr %14, align 4
  %22 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 1
  store ptr %1, ptr %22, align 4
  %23 = and i32 %4, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = or i8 %27, 1
  store i8 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = and i32 %4, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = or i8 %34, 2
  store i8 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = and i32 %4, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 2
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 4
  store i8 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 4
  store ptr %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 5
  store ptr %6, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 7
  store i32 %2, ptr %46, align 4
  br label %47

47:                                               ; preds = %43, %7
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_mux_add_adapter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca [20 x i8], align 1
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #10
  br label %191

16:                                               ; preds = %4
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 696) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %191, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 2
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 3
  store i32 %2, ptr %22, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1
  %33 = select i1 %31, ptr @__i2c_mux_master_xfer, ptr @i2c_mux_master_xfer
  store ptr %33, ptr %32, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = load ptr, ptr %23, align 8
  %36 = getelementptr inbounds %struct.i2c_algorithm, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1, i32 1
  store ptr %41, ptr %42, align 4
  %43 = load ptr, ptr %23, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi ptr [ %43, %39 ], [ %35, %34 ]
  %46 = getelementptr inbounds %struct.i2c_algorithm, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 2
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1, i32 2
  %55 = select i1 %53, ptr @__i2c_mux_smbus_xfer, ptr @i2c_mux_smbus_xfer
  store ptr %55, ptr %54, align 8
  br label %56

56:                                               ; preds = %49, %44
  %57 = load ptr, ptr %23, align 8
  %58 = getelementptr inbounds %struct.i2c_algorithm, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1, i32 3
  store ptr %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1
  %67 = getelementptr inbounds %struct.i2c_mux_priv, ptr %18, i32 0, i32 1, i32 4
  store ptr @i2c_mux_functionality, ptr %67, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 12
  %69 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %68, i32 noundef 48, ptr noundef nonnull @.str.1, i32 noundef %70, i32 noundef %2)
  store ptr null, ptr %18, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 2
  store ptr %66, ptr %72, align 8
  %73 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 3
  store ptr %18, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %75 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %76 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9, i32 1
  store ptr %74, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 8
  %78 = load i32, ptr %77, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 8
  store i32 %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 7
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 17
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 17
  store ptr %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 2
  %87 = load i8, ptr %86, align 4
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, ptr @i2c_parent_lock_ops, ptr @i2c_mux_lock_ops
  %91 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 4
  store ptr %90, ptr %91, align 8
  br label %92

92:                                               ; preds = %101, %65
  %93 = phi ptr [ %7, %65 ], [ %105, %101 ]
  %94 = phi i32 [ 0, %65 ], [ %97, %101 ]
  %95 = getelementptr inbounds %struct.i2c_adapter, ptr %93, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, %94
  %98 = getelementptr inbounds %struct.i2c_adapter, ptr %93, i32 0, i32 9, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 4
  %103 = load ptr, ptr %102, align 8
  %104 = icmp ne ptr %103, @i2c_adapter_type
  %105 = getelementptr i8, ptr %99, i32 -64
  %106 = icmp eq ptr %105, null
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %108, label %92

108:                                              ; preds = %101, %92
  %109 = and i32 %97, %3
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.2, i32 noundef %2) #10
  br label %114

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 1
  store i32 %3, ptr %113, align 4
  br label %114

114:                                              ; preds = %112, %111
  %115 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.device, ptr %116, i32 0, i32 25
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %161, label %120

120:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %121 = load i8, ptr %86, align 4
  %122 = and i8 %121, 2
  %123 = icmp eq i8 %122, 0
  %124 = and i8 %121, 4
  %125 = icmp eq i8 %124, 0
  %126 = select i1 %125, ptr @.str.5, ptr @.str.4
  %127 = select i1 %123, ptr %126, ptr @.str.3
  %128 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %118, ptr noundef nonnull %127) #9
  %129 = icmp eq ptr %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %120
  %131 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %128, ptr noundef nonnull @.str.6, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  call void @of_node_put(ptr noundef nonnull %128) #9
  br label %134

134:                                              ; preds = %133, %120
  %135 = call ptr @of_node_get(ptr noundef nonnull %118) #9
  br label %143

136:                                              ; preds = %130
  %137 = load i8, ptr %86, align 4
  %138 = and i8 %137, 6
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = call ptr @of_node_get(ptr noundef nonnull %128) #9
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %140, %136, %134
  %144 = phi ptr [ %128, %140 ], [ %128, %136 ], [ %135, %134 ]
  %145 = call ptr @of_get_next_child(ptr noundef %144, ptr noundef null) #9
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %154, %143
  %148 = phi ptr [ %155, %154 ], [ %145, %143 ]
  %149 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %148, ptr noundef nonnull @.str.6, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %150 = icmp sgt i32 %149, -1
  %151 = load i32, ptr %6, align 4
  %152 = icmp eq i32 %151, %2
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %157, label %154

154:                                              ; preds = %147
  %155 = call ptr @of_get_next_child(ptr noundef %144, ptr noundef nonnull %148) #9
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %147

157:                                              ; preds = %154, %147, %143, %140
  %158 = phi ptr [ %128, %140 ], [ %144, %143 ], [ %144, %147 ], [ %144, %154 ]
  %159 = phi ptr [ %141, %140 ], [ null, %143 ], [ null, %154 ], [ %148, %147 ]
  %160 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9, i32 25
  store ptr %159, ptr %160, align 8
  call void @of_node_put(ptr noundef %158) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %161

161:                                              ; preds = %157, %114
  %162 = icmp eq i32 %1, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  store i32 %1, ptr %164, align 4
  %165 = call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %18) #9
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef %1, i32 noundef %165) #10
  br label %189

168:                                              ; preds = %161
  %169 = call i32 @i2c_add_adapter(ptr noundef nonnull %18) #9
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.8, i32 noundef %2, i32 noundef %169) #10
  br label %189

172:                                              ; preds = %168, %163
  %173 = load ptr, ptr %115, align 4
  %174 = call i32 @sysfs_create_link(ptr noundef %75, ptr noundef %173, ptr noundef nonnull @.str.9) #9
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176, !prof !9

176:                                              ; preds = %172
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 422, i32 noundef 9, ptr noundef nonnull @.str.11) #9
  br label %177

177:                                              ; preds = %176, %172
  %178 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 20, ptr noundef nonnull @.str.12, i32 noundef %2)
  %179 = load ptr, ptr %115, align 4
  %180 = call i32 @sysfs_create_link(ptr noundef %179, ptr noundef %75, ptr noundef nonnull %5) #9
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %183, label %182, !prof !9

182:                                              ; preds = %177
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 427, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %2) #9
  br label %183

183:                                              ; preds = %182, %177
  %184 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %185 = load i32, ptr %184, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.14, i32 noundef %185) #10
  %186 = load i32, ptr %8, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %8, align 4
  %188 = getelementptr %struct.i2c_mux_core, ptr %0, i32 0, i32 8, i32 %186
  store ptr %18, ptr %188, align 4
  br label %191

189:                                              ; preds = %171, %167
  %190 = phi i32 [ %165, %167 ], [ %169, %171 ]
  call void @kfree(ptr noundef nonnull %18) #9
  br label %191

191:                                              ; preds = %189, %183, %16, %13
  %192 = phi i32 [ -22, %13 ], [ %190, %189 ], [ 0, %183 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret i32 %192
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_master_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_mux_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.i2c_mux_core, ptr %7, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_mux_priv, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 %10(ptr noundef %7, i32 noundef %12) #9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = tail call i32 @i2c_transfer(ptr noundef %8, ptr noundef %1, i32 noundef %2) #9
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ %16, %15 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.i2c_mux_core, ptr %7, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %11, align 8
  %24 = tail call i32 %20(ptr noundef %7, i32 noundef %23) #9
  br label %25

25:                                               ; preds = %22, %17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__i2c_mux_master_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_mux_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.i2c_mux_core, ptr %7, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_mux_priv, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 %10(ptr noundef %7, i32 noundef %12) #9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = tail call i32 @__i2c_transfer(ptr noundef %8, ptr noundef %1, i32 noundef %2) #9
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ %16, %15 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.i2c_mux_core, ptr %7, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %11, align 8
  %24 = tail call i32 %20(ptr noundef %7, i32 noundef %23) #9
  br label %25

25:                                               ; preds = %22, %17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_smbus_xfer(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #2 {
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.i2c_mux_priv, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_mux_core, ptr %11, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_mux_priv, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 %14(ptr noundef %11, i32 noundef %16) #9
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = tail call i32 @i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #9
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i32 [ %20, %19 ], [ %17, %7 ]
  %23 = getelementptr inbounds %struct.i2c_mux_core, ptr %11, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %15, align 8
  %28 = tail call i32 %24(ptr noundef %11, i32 noundef %27) #9
  br label %29

29:                                               ; preds = %26, %21
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__i2c_mux_smbus_xfer(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #2 {
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.i2c_mux_priv, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_mux_core, ptr %11, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_mux_priv, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 %14(ptr noundef %11, i32 noundef %16) #9
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = tail call i32 @__i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #9
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i32 [ %20, %19 ], [ %17, %7 ]
  %23 = getelementptr inbounds %struct.i2c_mux_core, ptr %11, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %15, align 8
  %28 = tail call i32 %24(ptr noundef %11, i32 noundef %27) #9
  br label %29

29:                                               ; preds = %26, %21
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_functionality(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_mux_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6) #9
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_mux_del_adapters(ptr nocapture noundef %0) #2 {
  %2 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %4, %6 ], [ %22, %8 ]
  %10 = add i32 %9, -1
  store i32 %10, ptr %3, align 4
  %11 = getelementptr %struct.i2c_mux_core, ptr %0, i32 0, i32 8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9, i32 25
  %16 = load ptr, ptr %15, align 8
  store ptr null, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_mux_priv, ptr %14, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 20, ptr noundef nonnull @.str.12, i32 noundef %18)
  %20 = load ptr, ptr %7, align 4
  call void @sysfs_remove_link(ptr noundef %20, ptr noundef nonnull %2) #9
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 9
  call void @sysfs_remove_link(ptr noundef %21, ptr noundef nonnull @.str.9) #9
  call void @i2c_del_adapter(ptr noundef %12) #9
  call void @of_node_put(ptr noundef %16) #9
  call void @kfree(ptr noundef %14) #9
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %8

24:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_mux_lock_bus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_mux_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 6
  tail call void @rt_mutex_lock(ptr noundef %8) #9
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %7, i32 noundef %1) #9
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_trylock_bus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_mux_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 6
  %9 = tail call i32 @rt_mutex_trylock(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = and i32 %1, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_lock_operations, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %7, i32 noundef %1) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @rt_mutex_unlock(ptr noundef %8) #9
  br label %22

22:                                               ; preds = %21, %14, %11, %2
  %23 = phi i32 [ 0, %21 ], [ 0, %2 ], [ 1, %11 ], [ 1, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_mux_unlock_bus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_mux_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.i2c_lock_operations, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %7, i32 noundef %1) #9
  br label %15

15:                                               ; preds = %10, %2
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 6
  tail call void @rt_mutex_unlock(ptr noundef %16) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_trylock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_parent_lock_bus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_mux_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 6
  tail call void @rt_mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %7, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_parent_trylock_bus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_mux_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 6
  %9 = tail call i32 @rt_mutex_trylock(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.i2c_lock_operations, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %7, i32 noundef %1) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @rt_mutex_unlock(ptr noundef %8) #9
  br label %19

19:                                               ; preds = %18, %11, %2
  %20 = phi i32 [ 0, %18 ], [ 0, %2 ], [ 1, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_parent_unlock_bus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_mux_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %7, i32 noundef %1) #9
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 6
  tail call void @rt_mutex_unlock(ptr noundef %12) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
