; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-designware-master.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-master.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_configure_master:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_configure_master\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_configure_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_probe_master:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_probe_master\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_probe_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type {}
%struct.dw_i2c_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, %struct.i2c_timings, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, %struct.i2c_bus_recovery_info, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_i2c_dw_configure_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_configure_master = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_configure_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_configure_master to i32), ptr @__kstrtab_i2c_dw_configure_master, ptr @__kstrtabns_i2c_dw_configure_master }, section "___ksymtab_gpl+i2c_dw_configure_master", align 4
@.str = private unnamed_addr constant [32 x i8] c"Synopsys DesignWare I2C adapter\00", align 1
@i2c_dw_algo = internal constant %struct.i2c_algorithm { ptr @i2c_dw_xfer, ptr null, ptr null, ptr null, ptr @i2c_dw_func, ptr null, ptr null }, align 4
@i2c_dw_quirks = internal constant %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"failure requesting irq %i: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failure adding adapter: %d\0A\00", align 1
@__kstrtab_i2c_dw_probe_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_probe_master = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_probe_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_probe_master to i32), ptr @__kstrtab_i2c_dw_probe_master, ptr @__kstrtabns_i2c_dw_probe_master }, section "___ksymtab_gpl+i2c_dw_probe_master", align 4
@__UNIQUE_ID_description250 = internal constant [75 x i8] c"i2c_designware_core.description=Synopsys DesignWare I2C bus master adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [64 x i8] c"i2c_designware_core.file=drivers/i2c/busses/i2c-designware-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [32 x i8] c"i2c_designware_core.license=GPL\00", section ".modinfo", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"High Speed not supported!\0A\00", align 1
@i2c_dw_xfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"drivers/i2c/busses/i2c-designware-master.c\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s %s: Transfer while suspended\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"transfer terminated early - interrupt latency too high?\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"i2c timeout error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to add adapter: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%s: invalid target address\0A\00", align 1
@__func__.i2c_dw_xfer_msg = private unnamed_addr constant [16 x i8] c"i2c_dw_xfer_msg\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"running with gpio recovery mode! scl%s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c",sda\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__ksymtab_i2c_dw_configure_master, ptr @__ksymtab_i2c_dw_probe_master], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @i2c_dw_configure_master(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 32
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 26
  store i32 259915779, ptr %3, align 8
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 27
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 49
  store i32 0, ptr %5, align 8
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 3400000
  %8 = select i1 %7, i32 103, i32 101
  %9 = icmp eq i32 %6, 100000
  %10 = select i1 %9, i32 99, i32 %8
  store i32 %10, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_probe_master(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 5
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #7
  %6 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 47
  store ptr @i2c_dw_init_master, ptr %6, align 8
  %7 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 45
  store ptr @i2c_dw_disable, ptr %7, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 46
  store ptr @i2c_dw_disable_int, ptr %8, align 4
  %9 = tail call i32 @i2c_dw_init_regmap(ptr noundef %0) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %176

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 32
  %13 = tail call i32 @i2c_dw_acquire_lock(ptr noundef %0) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %113

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 244, ptr noundef nonnull %2) #7
  call void @i2c_dw_release_lock(ptr noundef %0) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %113

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 32, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 300, i32 %22
  %25 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 32, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 300, i32 %26
  %29 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 34
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 35
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32, %20
  %37 = call i32 @i2c_dw_clk_rate(ptr noundef %0) #7
  %38 = call i32 @i2c_dw_scl_hcnt(i32 noundef %37, i32 noundef 4000, i32 noundef %24, i32 noundef 0, i32 noundef 0) #7
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr %29, align 4
  %40 = call i32 @i2c_dw_scl_lcnt(i32 noundef %37, i32 noundef 4700, i32 noundef %28, i32 noundef 0) #7
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 35
  store i16 %41, ptr %42, align 2
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i32, ptr %12, align 4
  %45 = icmp eq i32 %44, 1000000
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 38
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 39
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 36
  store i16 %48, ptr %55, align 8
  br label %63

56:                                               ; preds = %50, %46
  %57 = call i32 @i2c_dw_clk_rate(ptr noundef %0) #7
  %58 = call i32 @i2c_dw_scl_hcnt(i32 noundef %57, i32 noundef 260, i32 noundef %24, i32 noundef 0, i32 noundef 0) #7
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 36
  store i16 %59, ptr %60, align 8
  %61 = call i32 @i2c_dw_scl_lcnt(i32 noundef %57, i32 noundef 500, i32 noundef %28, i32 noundef 0) #7
  %62 = trunc i32 %61 to i16
  br label %63

63:                                               ; preds = %56, %54
  %64 = phi i16 [ %52, %54 ], [ %62, %56 ]
  %65 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 37
  store i16 %64, ptr %65, align 2
  br label %66

66:                                               ; preds = %63, %43
  %67 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 36
  %68 = load i16, ptr %67, align 8
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 37
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70, %66
  %75 = call i32 @i2c_dw_clk_rate(ptr noundef %0) #7
  %76 = call i32 @i2c_dw_scl_hcnt(i32 noundef %75, i32 noundef 600, i32 noundef %24, i32 noundef 0, i32 noundef 0) #7
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %67, align 8
  %78 = call i32 @i2c_dw_scl_lcnt(i32 noundef %75, i32 noundef 1300, i32 noundef %28, i32 noundef 0) #7
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 37
  store i16 %79, ptr %80, align 2
  br label %81

81:                                               ; preds = %74, %70
  %82 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 27
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 6
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %115

86:                                               ; preds = %81
  %87 = load i32, ptr %2, align 4
  %88 = and i32 %87, 12
  %89 = icmp eq i32 %88, 12
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.6) #8
  store i32 400000, ptr %12, align 4
  %92 = load i32, ptr %82, align 4
  %93 = and i32 %92, -7
  %94 = or i32 %93, 4
  store i32 %94, ptr %82, align 4
  %95 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 40
  store i16 0, ptr %95, align 8
  br label %110

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 40
  %98 = load i16, ptr %97, align 8
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 41
  %102 = load i16, ptr %101, align 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %100, %96
  %105 = call i32 @i2c_dw_clk_rate(ptr noundef %0) #7
  %106 = call i32 @i2c_dw_scl_hcnt(i32 noundef %105, i32 noundef 160, i32 noundef %24, i32 noundef 0, i32 noundef 0) #7
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %97, align 8
  %108 = call i32 @i2c_dw_scl_lcnt(i32 noundef %105, i32 noundef 320, i32 noundef %28, i32 noundef 0) #7
  %109 = trunc i32 %108 to i16
  br label %110

110:                                              ; preds = %104, %90
  %111 = phi i16 [ 0, %90 ], [ %109, %104 ]
  %112 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 41
  store i16 %111, ptr %112, align 2
  br label %115

113:                                              ; preds = %15, %11
  %114 = phi i32 [ %18, %15 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %176

115:                                              ; preds = %110, %100, %81
  %116 = call i32 @i2c_dw_set_sda_hold(ptr noundef %0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %176

118:                                              ; preds = %115
  %119 = call i32 @i2c_dw_set_fifo_size(ptr noundef %0) #7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %176

121:                                              ; preds = %118
  %122 = load ptr, ptr %6, align 8
  %123 = call i32 %122(ptr noundef %0) #7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %176

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %126, ptr noundef nonnull align 1 dereferenceable(32) @.str, i32 32, i1 false)
  %127 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25, i32 8
  store i32 3, ptr %127, align 8
  %128 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25, i32 2
  store ptr @i2c_dw_algo, ptr %128, align 8
  %129 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25, i32 17
  store ptr @i2c_dw_quirks, ptr %129, align 8
  %130 = load ptr, ptr %0, align 8
  %131 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25, i32 9, i32 1
  store ptr %130, ptr %131, align 4
  %132 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25, i32 9, i32 8
  store ptr %0, ptr %132, align 8
  %133 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 24
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 3840
  %136 = icmp eq i32 %135, 1024
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = call fastcc i32 @amd_i2c_adap_quirk(ptr noundef %0)
  br label %176

139:                                              ; preds = %125
  %140 = and i32 %134, 2
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 262272, i32 16384
  call void @i2c_dw_disable_int(ptr noundef %0) #7
  %143 = load ptr, ptr %0, align 8
  %144 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 23
  %145 = load i32, ptr %144, align 8
  %146 = getelementptr inbounds %struct.device, ptr %143, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load ptr, ptr %143, align 4
  br label %151

151:                                              ; preds = %149, %139
  %152 = phi ptr [ %150, %149 ], [ %147, %139 ]
  %153 = call i32 @devm_request_threaded_irq(ptr noundef %143, i32 noundef %145, ptr noundef nonnull @i2c_dw_isr, ptr noundef null, i32 noundef %142, ptr noundef %152, ptr noundef %0) #7
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr %0, align 8
  %157 = load i32, ptr %144, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.1, i32 noundef %157, i32 noundef %153) #8
  br label %176

158:                                              ; preds = %151
  %159 = call fastcc i32 @i2c_dw_init_recovery_info(ptr noundef %0)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load ptr, ptr %0, align 8
  %163 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %163) #7, !srcloc !9
  %164 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %163, ptr %163, i32 1, ptr elementtype(i32) %163) #7, !srcloc !10
  %165 = call i32 @i2c_add_numbered_adapter(ptr noundef %3) #7
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %161
  %168 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.2, i32 noundef %165) #8
  br label %169

169:                                              ; preds = %167, %161
  %170 = load ptr, ptr %0, align 8
  %171 = getelementptr inbounds %struct.device, ptr %170, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #7, !srcloc !9
  %172 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 0, i32 -1, ptr elementtype(i32) %171) #7, !srcloc !12
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %176

176:                                              ; preds = %175, %169, %158, %155, %137, %121, %118, %115, %113, %1
  %177 = phi i32 [ %138, %137 ], [ %153, %155 ], [ %9, %1 ], [ %116, %115 ], [ %119, %118 ], [ %123, %121 ], [ %159, %158 ], [ %114, %113 ], [ %165, %169 ], [ %165, %175 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_dw_init_master(ptr noundef %0) #2 {
  %2 = tail call i32 @i2c_dw_acquire_lock(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %60

4:                                                ; preds = %1
  tail call void @__i2c_dw_disable(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 34
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 20, i32 noundef %9) #7
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 35
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 24, i32 noundef %14) #7
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 36
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 28, i32 noundef %19) #7
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 37
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 32, i32 noundef %24) #7
  %26 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 40
  %27 = load i16, ptr %26, align 8
  %28 = zext i16 %27 to i32
  %29 = icmp eq i16 %27, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 41
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %5, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 36, i32 noundef %28) #7
  %37 = load ptr, ptr %5, align 4
  %38 = load i16, ptr %31, align 2
  %39 = zext i16 %38 to i32
  %40 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 40, i32 noundef %39) #7
  br label %41

41:                                               ; preds = %34, %30, %4
  %42 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 33
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 4
  %47 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 124, i32 noundef %43) #7
  br label %48

48:                                               ; preds = %45, %41
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 29
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 1
  %53 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 60, i32 noundef %52) #7
  %54 = load ptr, ptr %5, align 4
  %55 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 56, i32 noundef 0) #7
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 27
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 0, i32 noundef %58) #7
  tail call void @i2c_dw_release_lock(ptr noundef %0) #7
  br label %60

60:                                               ; preds = %48, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_disable_int(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_init_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_set_fifo_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @amd_i2c_adap_quirk(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %6) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #7, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #7, !srcloc !12
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %17

17:                                               ; preds = %16, %10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_dw_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 0, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 108, ptr noundef nonnull %10) #7
  %14 = load ptr, ptr %11, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 52, ptr noundef nonnull %9) #7
  %16 = load i32, ptr %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %416, label %18

18:                                               ; preds = %2
  %19 = load i32, ptr %9, align 4
  %20 = and i32 %19, -257
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %416, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %23 = load ptr, ptr %11, align 4
  %24 = call i32 @regmap_read(ptr noundef %23, i32 noundef 44, ptr noundef nonnull %6) #7
  %25 = load i32, ptr %6, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %11, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 68, ptr noundef nonnull %7) #7
  %31 = load i32, ptr %6, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i32 [ %31, %28 ], [ %25, %22 ]
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %11, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef 72, ptr noundef nonnull %7) #7
  %39 = load i32, ptr %6, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %39, %36 ], [ %33, %32 ]
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %11, align 4
  %46 = call i32 @regmap_read(ptr noundef %45, i32 noundef 76, ptr noundef nonnull %7) #7
  %47 = load i32, ptr %6, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %47, %44 ], [ %41, %40 ]
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %11, align 4
  %54 = call i32 @regmap_read(ptr noundef %53, i32 noundef 80, ptr noundef nonnull %7) #7
  %55 = load i32, ptr %6, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %55, %52 ], [ %49, %48 ]
  %58 = and i32 %57, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 22
  %63 = call i32 @regmap_read(ptr noundef %61, i32 noundef 128, ptr noundef %62) #7
  %64 = load ptr, ptr %11, align 4
  %65 = call i32 @regmap_read(ptr noundef %64, i32 noundef 84, ptr noundef nonnull %7) #7
  %66 = load i32, ptr %6, align 4
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %66, %60 ], [ %57, %56 ]
  %69 = and i32 %68, 128
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %11, align 4
  %73 = call i32 @regmap_read(ptr noundef %72, i32 noundef 88, ptr noundef nonnull %7) #7
  %74 = load i32, ptr %6, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %74, %71 ], [ %68, %67 ]
  %77 = and i32 %76, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %11, align 4
  %81 = call i32 @regmap_read(ptr noundef %80, i32 noundef 92, ptr noundef nonnull %7) #7
  %82 = load i32, ptr %6, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i32 [ %82, %79 ], [ %76, %75 ]
  %85 = and i32 %84, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 31
  %89 = load i32, ptr %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = and i32 %84, 4
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr %11, align 4
  %96 = call i32 @regmap_read(ptr noundef %95, i32 noundef 96, ptr noundef nonnull %7) #7
  %97 = load i32, ptr %6, align 4
  br label %98

98:                                               ; preds = %94, %87, %83
  %99 = phi i32 [ %84, %87 ], [ %97, %94 ], [ %84, %83 ]
  %100 = and i32 %99, 1024
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %11, align 4
  %104 = call i32 @regmap_read(ptr noundef %103, i32 noundef 100, ptr noundef nonnull %7) #7
  %105 = load i32, ptr %6, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %105, %102 ], [ %99, %98 ]
  %108 = and i32 %107, 2048
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %11, align 4
  %112 = call i32 @regmap_read(ptr noundef %111, i32 noundef 104, ptr noundef nonnull %7) #7
  %113 = load i32, ptr %6, align 4
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i32 [ %113, %110 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  store i32 %115, ptr %8, align 4
  %116 = and i32 %115, 64
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 11
  %120 = load i32, ptr %119, align 8
  %121 = or i32 %120, 1
  store i32 %121, ptr %119, align 8
  %122 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 21
  store i32 0, ptr %122, align 8
  %123 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 31
  store i32 0, ptr %123, align 4
  %124 = load ptr, ptr %11, align 4
  %125 = call i32 @regmap_write(ptr noundef %124, i32 noundef 48, i32 noundef 0) #7
  br label %390

126:                                              ; preds = %114
  %127 = and i32 %115, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %238, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 12
  %131 = load ptr, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %132 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 17
  %133 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 13
  %134 = load i32, ptr %132, align 8
  %135 = load i32, ptr %133, align 8
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %236

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 21
  %139 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 18
  %140 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 19
  %141 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 31
  %142 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 15
  br label %143

143:                                              ; preds = %231, %137
  %144 = phi i32 [ %135, %137 ], [ %232, %231 ]
  %145 = phi i32 [ %134, %137 ], [ %234, %231 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %146 = getelementptr %struct.i2c_msg, ptr %131, i32 %145, i32 1
  %147 = load i16, ptr %146, align 2
  %148 = and i16 %147, 1
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %231, label %150

150:                                              ; preds = %143
  %151 = load i32, ptr %138, align 8
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = getelementptr %struct.i2c_msg, ptr %131, i32 %145, i32 2
  %156 = load i16, ptr %155, align 4
  %157 = zext i16 %156 to i32
  %158 = getelementptr %struct.i2c_msg, ptr %131, i32 %145, i32 3
  br label %161

159:                                              ; preds = %150
  %160 = load i32, ptr %139, align 4
  br label %161

161:                                              ; preds = %159, %154
  %162 = phi i32 [ %160, %159 ], [ %157, %154 ]
  %163 = phi ptr [ %140, %159 ], [ %158, %154 ]
  %164 = load ptr, ptr %163, align 4
  %165 = load ptr, ptr %11, align 4
  %166 = call i32 @regmap_read(ptr noundef %165, i32 noundef 120, ptr noundef nonnull %4) #7
  %167 = icmp ne i32 %162, 0
  %168 = load i32, ptr %4, align 4
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %220

171:                                              ; preds = %207, %161
  %172 = phi ptr [ %211, %207 ], [ %164, %161 ]
  %173 = phi i32 [ %214, %207 ], [ %162, %161 ]
  %174 = load i32, ptr %132, align 8
  %175 = getelementptr %struct.i2c_msg, ptr %131, i32 %174, i32 1
  %176 = load i16, ptr %175, align 2
  %177 = load ptr, ptr %11, align 4
  %178 = call i32 @regmap_read(ptr noundef %177, i32 noundef 16, ptr noundef nonnull %5) #7
  %179 = and i16 %176, 1024
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %207, label %181

181:                                              ; preds = %171
  %182 = load i32, ptr %5, align 4
  %183 = and i32 %182, 255
  %184 = icmp ult i32 %183, 33
  %185 = icmp ne i32 %182, 0
  %186 = and i1 %185, %184
  br i1 %186, label %187, label %207

187:                                              ; preds = %181
  %188 = trunc i32 %182 to i8
  %189 = load ptr, ptr %130, align 4
  %190 = load i32, ptr %132, align 8
  %191 = getelementptr %struct.i2c_msg, ptr %189, i32 %190, i32 1
  %192 = load i16, ptr %191, align 2
  %193 = and i16 %192, 4
  %194 = icmp eq i16 %193, 0
  %195 = select i1 %194, i8 1, i8 2
  %196 = add i8 %195, %188
  %197 = zext i8 %196 to i32
  %198 = load i32, ptr %141, align 4
  %199 = and i32 %198, 255
  %200 = call i32 @llvm.usub.sat.i32(i32 %197, i32 %199) #7
  store i32 %200, ptr %142, align 8
  %201 = zext i8 %196 to i16
  %202 = getelementptr %struct.i2c_msg, ptr %189, i32 %190, i32 2
  store i16 %201, ptr %202, align 4
  %203 = load i32, ptr %132, align 8
  %204 = getelementptr %struct.i2c_msg, ptr %189, i32 %203, i32 1
  %205 = load i16, ptr %204, align 2
  %206 = and i16 %205, -1025
  store i16 %206, ptr %204, align 2
  br label %207

207:                                              ; preds = %187, %181, %171
  %208 = phi i32 [ %197, %187 ], [ %173, %181 ], [ %173, %171 ]
  %209 = load i32, ptr %5, align 4
  %210 = trunc i32 %209 to i8
  %211 = getelementptr i8, ptr %172, i32 1
  store i8 %210, ptr %172, align 1
  %212 = load i32, ptr %141, align 4
  %213 = add i32 %212, -1
  store i32 %213, ptr %141, align 4
  %214 = add i32 %208, -1
  %215 = load i32, ptr %4, align 4
  %216 = add i32 %215, -1
  store i32 %216, ptr %4, align 4
  %217 = icmp ne i32 %214, 0
  %218 = icmp ne i32 %216, 0
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %171, label %220

220:                                              ; preds = %207, %161
  %221 = phi i32 [ %162, %161 ], [ %214, %207 ]
  %222 = phi ptr [ %164, %161 ], [ %211, %207 ]
  %223 = phi i1 [ %167, %161 ], [ %217, %207 ]
  %224 = load i32, ptr %138, align 8
  br i1 %223, label %229, label %225

225:                                              ; preds = %220
  %226 = and i32 %224, -3
  store i32 %226, ptr %138, align 8
  %227 = load i32, ptr %132, align 8
  %228 = load i32, ptr %133, align 8
  br label %231

229:                                              ; preds = %220
  %230 = or i32 %224, 2
  store i32 %230, ptr %138, align 8
  store i32 %221, ptr %139, align 4
  store ptr %222, ptr %140, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %236

231:                                              ; preds = %225, %143
  %232 = phi i32 [ %228, %225 ], [ %144, %143 ]
  %233 = phi i32 [ %227, %225 ], [ %145, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %234 = add i32 %233, 1
  store i32 %234, ptr %132, align 8
  %235 = icmp slt i32 %234, %232
  br i1 %235, label %143, label %236

236:                                              ; preds = %231, %229, %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %237 = load i32, ptr %8, align 4
  br label %238

238:                                              ; preds = %236, %126
  %239 = phi i32 [ %237, %236 ], [ %115, %126 ]
  %240 = and i32 %239, 16
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %390, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 12
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 14
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr %struct.i2c_msg, ptr %244, i32 %246
  %248 = load i16, ptr %247, align 4
  %249 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 15
  %250 = load i32, ptr %249, align 8
  %251 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 16
  %252 = load ptr, ptr %251, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %253 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 13
  %254 = load i32, ptr %253, align 8
  %255 = icmp slt i32 %246, %254
  br i1 %255, label %256, label %379

256:                                              ; preds = %242
  %257 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 21
  %258 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 27
  %259 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 29
  %260 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 30
  %261 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 31
  br label %262

262:                                              ; preds = %372, %256
  %263 = phi i32 [ %246, %256 ], [ %376, %372 ]
  %264 = phi i1 [ false, %256 ], [ %365, %372 ]
  %265 = phi ptr [ %252, %256 ], [ %364, %372 ]
  %266 = phi i32 [ %250, %256 ], [ 0, %372 ]
  %267 = getelementptr %struct.i2c_msg, ptr %244, i32 %263
  %268 = getelementptr %struct.i2c_msg, ptr %244, i32 %263, i32 1
  %269 = load i16, ptr %268, align 2
  %270 = load i16, ptr %267, align 4
  %271 = icmp eq i16 %270, %248
  br i1 %271, label %275, label %272

272:                                              ; preds = %262
  %273 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.i2c_dw_xfer_msg) #8
  %274 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 20
  store i32 -22, ptr %274, align 4
  br label %379

275:                                              ; preds = %262
  %276 = load i32, ptr %257, align 8
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %275
  %280 = getelementptr %struct.i2c_msg, ptr %244, i32 %263, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr %struct.i2c_msg, ptr %244, i32 %263, i32 2
  %283 = load i16, ptr %282, align 4
  %284 = zext i16 %283 to i32
  %285 = load i32, ptr %258, align 4
  %286 = and i32 %285, 32
  %287 = icmp ne i32 %286, 0
  %288 = icmp sgt i32 %263, 0
  %289 = select i1 %287, i1 %288, i1 false
  %290 = select i1 %289, i1 true, i1 %264
  br label %291

291:                                              ; preds = %279, %275
  %292 = phi i32 [ %266, %275 ], [ %284, %279 ]
  %293 = phi ptr [ %265, %275 ], [ %281, %279 ]
  %294 = phi i1 [ %264, %275 ], [ %290, %279 ]
  %295 = load ptr, ptr %11, align 4
  %296 = call i32 @regmap_read(ptr noundef %295, i32 noundef 116, ptr noundef nonnull %3) #7
  %297 = load i32, ptr %259, align 4
  %298 = load i32, ptr %3, align 4
  %299 = sub i32 %297, %298
  %300 = load ptr, ptr %11, align 4
  %301 = call i32 @regmap_read(ptr noundef %300, i32 noundef 120, ptr noundef nonnull %3) #7
  %302 = load i32, ptr %260, align 8
  %303 = load i32, ptr %3, align 4
  %304 = sub i32 %302, %303
  %305 = icmp ne i32 %292, 0
  %306 = icmp sgt i32 %299, 0
  %307 = select i1 %305, i1 %306, i1 false
  %308 = icmp sgt i32 %304, 0
  %309 = select i1 %307, i1 %308, i1 false
  %310 = and i16 %269, 1024
  br i1 %309, label %311, label %362

311:                                              ; preds = %291
  %312 = icmp eq i16 %310, 0
  br label %313

313:                                              ; preds = %352, %311
  %314 = phi i1 [ %294, %311 ], [ false, %352 ]
  %315 = phi ptr [ %293, %311 ], [ %354, %352 ]
  %316 = phi i32 [ %292, %311 ], [ %356, %352 ]
  %317 = phi i32 [ %304, %311 ], [ %353, %352 ]
  %318 = phi i32 [ %299, %311 ], [ %355, %352 ]
  %319 = load i32, ptr %245, align 4
  %320 = load i32, ptr %253, align 8
  %321 = add i32 %320, -1
  %322 = icmp eq i32 %319, %321
  %323 = icmp eq i32 %316, 1
  %324 = select i1 %322, i1 %323, i1 false
  %325 = select i1 %324, i1 %312, i1 false
  %326 = select i1 %325, i32 512, i32 0
  %327 = or i32 %326, 1024
  %328 = select i1 %314, i32 %327, i32 %326
  %329 = getelementptr %struct.i2c_msg, ptr %244, i32 %319, i32 1
  %330 = load i16, ptr %329, align 2
  %331 = and i16 %330, 1
  %332 = icmp eq i16 %331, 0
  br i1 %332, label %345, label %333

333:                                              ; preds = %313
  %334 = load i32, ptr %261, align 4
  %335 = load i32, ptr %260, align 8
  %336 = icmp ult i32 %334, %335
  br i1 %336, label %338, label %337

337:                                              ; preds = %333
  store ptr %315, ptr %251, align 4
  store i32 %316, ptr %249, align 8
  br label %369

338:                                              ; preds = %333
  %339 = load ptr, ptr %11, align 4
  %340 = or i32 %328, 256
  %341 = call i32 @regmap_write(ptr noundef %339, i32 noundef 16, i32 noundef %340) #7
  %342 = add nsw i32 %317, -1
  %343 = load i32, ptr %261, align 4
  %344 = add i32 %343, 1
  store i32 %344, ptr %261, align 4
  br label %352

345:                                              ; preds = %313
  %346 = load ptr, ptr %11, align 4
  %347 = getelementptr i8, ptr %315, i32 1
  %348 = load i8, ptr %315, align 1
  %349 = zext i8 %348 to i32
  %350 = or i32 %328, %349
  %351 = call i32 @regmap_write(ptr noundef %346, i32 noundef 16, i32 noundef %350) #7
  br label %352

352:                                              ; preds = %345, %338
  %353 = phi i32 [ %342, %338 ], [ %317, %345 ]
  %354 = phi ptr [ %315, %338 ], [ %347, %345 ]
  %355 = add nsw i32 %318, -1
  %356 = add i32 %316, -1
  %357 = icmp ne i32 %356, 0
  %358 = icmp sgt i32 %318, 1
  %359 = select i1 %357, i1 %358, i1 false
  %360 = icmp sgt i32 %353, 0
  %361 = select i1 %359, i1 %360, i1 false
  br i1 %361, label %313, label %362

362:                                              ; preds = %352, %291
  %363 = phi i32 [ %292, %291 ], [ %356, %352 ]
  %364 = phi ptr [ %293, %291 ], [ %354, %352 ]
  %365 = phi i1 [ %294, %291 ], [ false, %352 ]
  store ptr %364, ptr %251, align 4
  store i32 %363, ptr %249, align 8
  %366 = icmp eq i32 %363, 0
  %367 = icmp eq i16 %310, 0
  %368 = select i1 %366, i1 %367, i1 false
  br i1 %368, label %372, label %369

369:                                              ; preds = %362, %337
  %370 = load i32, ptr %257, align 8
  %371 = or i32 %370, 1
  store i32 %371, ptr %257, align 8
  br label %379

372:                                              ; preds = %362
  %373 = load i32, ptr %257, align 8
  %374 = and i32 %373, -2
  store i32 %374, ptr %257, align 8
  %375 = load i32, ptr %245, align 4
  %376 = add i32 %375, 1
  store i32 %376, ptr %245, align 4
  %377 = load i32, ptr %253, align 8
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %262, label %379

379:                                              ; preds = %372, %369, %272, %242
  %380 = load i32, ptr %245, align 4
  %381 = load i32, ptr %253, align 8
  %382 = icmp eq i32 %380, %381
  %383 = select i1 %382, i32 580, i32 596
  %384 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 20
  %385 = load i32, ptr %384, align 4
  %386 = icmp eq i32 %385, 0
  %387 = select i1 %386, i32 %383, i32 0
  %388 = load ptr, ptr %11, align 4
  %389 = call i32 @regmap_write(ptr noundef %388, i32 noundef 48, i32 noundef %387) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %390

390:                                              ; preds = %379, %238, %118
  %391 = phi i32 [ %239, %238 ], [ %239, %379 ], [ %115, %118 ]
  %392 = and i32 %391, 576
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 20
  %396 = load i32, ptr %395, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %404, label %398

398:                                              ; preds = %394, %390
  %399 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 31
  %400 = load i32, ptr %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 5
  call void @complete(ptr noundef %403) #7
  br label %415

404:                                              ; preds = %398, %394
  %405 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 24
  %406 = load i32, ptr %405, align 4
  %407 = and i32 %406, 1
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %415, label %409, !prof !14

409:                                              ; preds = %404
  %410 = load ptr, ptr %11, align 4
  %411 = call i32 @regmap_read(ptr noundef %410, i32 noundef 48, ptr noundef nonnull %8) #7
  call void @i2c_dw_disable_int(ptr noundef %1) #7
  %412 = load ptr, ptr %11, align 4
  %413 = load i32, ptr %8, align 4
  %414 = call i32 @regmap_write(ptr noundef %412, i32 noundef 48, i32 noundef %413) #7
  br label %415

415:                                              ; preds = %409, %404, %402
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br label %416

416:                                              ; preds = %415, %18, %2
  %417 = phi i32 [ 1, %415 ], [ 0, %18 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  ret i32 %417
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_init_recovery_info(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 50
  %3 = load ptr, ptr %0, align 8
  %4 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef 7) #7
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = ptrtoint ptr %4 to i32
  %10 = select i1 %6, i32 %9, i32 0
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 50, i32 8
  store ptr %4, ptr %12, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = tail call ptr @devm_gpiod_get_optional(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef 1) #7
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  br label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 50, i32 9
  store ptr %14, ptr %19, align 4
  store ptr @i2c_generic_scl_recovery, ptr %2, align 4
  %20 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 50, i32 6
  store ptr @i2c_dw_prepare_recovery, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 50, i32 7
  store ptr @i2c_dw_unprepare_recovery, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25, i32 16
  store ptr %2, ptr %22, align 4
  %23 = load ptr, ptr %0, align 8
  %24 = icmp eq ptr %14, null
  %25 = select i1 %24, ptr @.str.4, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull %25) #8
  br label %26

26:                                               ; preds = %18, %16, %8
  %27 = phi i32 [ %10, %8 ], [ %17, %16 ], [ 0, %18 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_acquire_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__i2c_dw_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_release_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_clk_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_scl_hcnt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_scl_lcnt(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_set_sda_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_dw_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  %9 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 3840
  %12 = icmp eq i32 %11, 1024
  br i1 %12, label %13, label %104

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.dw_i2c_dev, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 1140, i32 noundef 13) #7
  %18 = getelementptr inbounds %struct.dw_i2c_dev, ptr %14, i32 0, i32 12
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dw_i2c_dev, ptr %14, i32 0, i32 13
  store i32 %2, ptr %19, align 8
  tail call fastcc void @i2c_dw_xfer_init(ptr noundef %14) #7
  tail call void @i2c_dw_disable_int(ptr noundef %14) #7
  %20 = icmp sgt i32 %2, 0
  br i1 %20, label %21, label %102

21:                                               ; preds = %13
  %22 = add nsw i32 %2, -1
  br label %26

23:                                               ; preds = %98
  %24 = add nuw nsw i32 %28, 1
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %102, label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ 0, %21 ], [ %99, %23 ]
  %28 = phi i32 [ 0, %21 ], [ %24, %23 ]
  %29 = getelementptr %struct.i2c_msg, ptr %1, i32 %28, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.i2c_msg, ptr %1, i32 %28, i32 2
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr %struct.i2c_msg, ptr %1, i32 %28, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load ptr, ptr %15, align 4
  %40 = add nsw i32 %33, -1
  %41 = call i32 @regmap_write(ptr noundef %39, i32 noundef 60, i32 noundef %40) #7
  br label %42

42:                                               ; preds = %38, %26
  %43 = icmp eq i16 %32, 0
  br i1 %43, label %98, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %28, %22
  %46 = shl nuw nsw i32 %33, 1
  %47 = add nsw i32 %46, -2
  br label %48

48:                                               ; preds = %94, %44
  %49 = phi ptr [ %30, %44 ], [ %95, %94 ]
  %50 = phi i32 [ %27, %44 ], [ %55, %94 ]
  %51 = phi i32 [ %33, %44 ], [ %96, %94 ]
  %52 = icmp eq i32 %51, 1
  %53 = select i1 %45, i1 %52, i1 false
  %54 = or i32 %50, 512
  %55 = select i1 %53, i32 %54, i32 %50
  %56 = load i16, ptr %34, align 2
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  %59 = load ptr, ptr %15, align 4
  br i1 %58, label %88, label %60

60:                                               ; preds = %48
  %61 = call i32 @regmap_write(ptr noundef %59, i32 noundef 16, i32 noundef 256) #7
  %62 = load ptr, ptr %15, align 4
  %63 = or i32 %55, 256
  %64 = call i32 @regmap_write(ptr noundef %62, i32 noundef 16, i32 noundef %63) #7
  %65 = icmp eq i32 %55, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %15, align 4
  %68 = call i32 @regmap_write(ptr noundef %67, i32 noundef 60, i32 noundef %47) #7
  %69 = load ptr, ptr %15, align 4
  %70 = call i32 @regmap_write(ptr noundef %69, i32 noundef 56, i32 noundef %47) #7
  %71 = call i32 @i2c_dw_wait_bus_not_busy(ptr noundef %14) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %66
  %74 = call fastcc i32 @i2c_dw_check_stopbit(ptr noundef %14) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %76, %73
  %77 = phi i32 [ %83, %76 ], [ 0, %73 ]
  %78 = load ptr, ptr %15, align 4
  %79 = call i32 @regmap_read(ptr noundef %78, i32 noundef 16, ptr noundef nonnull %4) #7
  %80 = load i32, ptr %4, align 4
  %81 = trunc i32 %80 to i8
  %82 = getelementptr i8, ptr %49, i32 %77
  store i8 %81, ptr %82, align 1
  %83 = add nuw nsw i32 %77, 1
  %84 = icmp eq i32 %83, %33
  br i1 %84, label %85, label %76

85:                                               ; preds = %76
  %86 = call fastcc i32 @i2c_dw_check_stopbit(ptr noundef %14) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %102

88:                                               ; preds = %48
  %89 = getelementptr i8, ptr %49, i32 1
  %90 = load i8, ptr %49, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %55, %91
  %93 = call i32 @regmap_write(ptr noundef %59, i32 noundef 16, i32 noundef %92) #7
  call void @usleep_range_state(i32 noundef 25, i32 noundef 250, i32 noundef 2) #7
  br label %94

94:                                               ; preds = %88, %85, %60
  %95 = phi ptr [ %49, %85 ], [ %49, %60 ], [ %89, %88 ]
  %96 = add nsw i32 %51, -1
  %97 = icmp sgt i32 %51, 1
  br i1 %97, label %48, label %98

98:                                               ; preds = %94, %42
  %99 = phi i32 [ %27, %42 ], [ %55, %94 ]
  %100 = call fastcc i32 @i2c_dw_check_stopbit(ptr noundef %14) #7
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %23, label %102

102:                                              ; preds = %98, %85, %73, %66, %23, %13
  %103 = phi i32 [ 0, %13 ], [ %74, %73 ], [ %86, %85 ], [ %71, %66 ], [ 0, %23 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %169

104:                                              ; preds = %3
  %105 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 51
  %106 = load i8, ptr %105, align 8, !range !15
  %107 = icmp ne i8 %106, 0
  %108 = load i1, ptr @i2c_dw_xfer.__already_done, align 1
  %109 = xor i1 %108, true
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %122, !prof !16

111:                                              ; preds = %104
  store i1 true, ptr @i2c_dw_xfer.__already_done, align 1
  %112 = load ptr, ptr %6, align 8
  %113 = tail call ptr @dev_driver_string(ptr noundef %112) #7
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load ptr, ptr %114, align 4
  br label %120

120:                                              ; preds = %118, %111
  %121 = phi ptr [ %119, %118 ], [ %116, %111 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 570, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %113, ptr noundef %121) #7
  br label %122

122:                                              ; preds = %120, %104
  br i1 %107, label %169, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 5
  store i32 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 12
  store ptr %1, ptr %125, align 4
  %126 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 13
  store i32 %2, ptr %126, align 8
  %127 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 11
  store i32 0, ptr %127, align 8
  %128 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 14
  store i32 0, ptr %128, align 4
  %129 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 17
  store i32 0, ptr %129, align 8
  %130 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 20
  store i32 0, ptr %130, align 4
  %131 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 21
  store i32 0, ptr %131, align 8
  %132 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 22
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 31
  store i32 0, ptr %133, align 4
  %134 = tail call i32 @i2c_dw_acquire_lock(ptr noundef %6) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %123
  %137 = tail call i32 @i2c_dw_wait_bus_not_busy(ptr noundef %6) #7
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %167, label %139

139:                                              ; preds = %136
  tail call fastcc void @i2c_dw_xfer_init(ptr noundef %6)
  %140 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = tail call i32 @wait_for_completion_timeout(ptr noundef %124, i32 noundef %141) #7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.9) #8
  %146 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 25
  %147 = tail call i32 @i2c_recover_bus(ptr noundef %146) #7
  %148 = tail call i32 @i2c_dw_init_master(ptr noundef %6)
  br label %167

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.dw_i2c_dev, ptr %6, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = tail call i32 @regmap_write(ptr noundef %151, i32 noundef 108, i32 noundef 0) #7
  %153 = load i32, ptr %130, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load i32, ptr %127, align 8
  switch i32 %156, label %162 [
    i32 0, label %157
    i32 1, label %160
  ], !prof !17

157:                                              ; preds = %155
  %158 = load i32, ptr %131, align 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %167, label %165, !prof !14

160:                                              ; preds = %155
  %161 = tail call i32 @i2c_dw_handle_tx_abort(ptr noundef %6) #7
  br label %167

162:                                              ; preds = %155
  %163 = load i32, ptr %131, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162, %157
  %166 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.10) #8
  br label %167

167:                                              ; preds = %165, %162, %160, %157, %149, %144, %136
  %168 = phi i32 [ %137, %136 ], [ %161, %160 ], [ -110, %144 ], [ %153, %149 ], [ %2, %157 ], [ -5, %165 ], [ -5, %162 ]
  tail call void @i2c_dw_release_lock(ptr noundef %6) #7
  br label %169

169:                                              ; preds = %167, %123, %122, %102
  %170 = phi i32 [ %103, %102 ], [ %134, %123 ], [ %168, %167 ], [ -108, %122 ]
  %171 = load ptr, ptr %6, align 8
  %172 = call i64 @ktime_get_mono_fast_ns() #7
  %173 = getelementptr inbounds %struct.device, ptr %171, i32 0, i32 11, i32 22
  store volatile i64 %172, ptr %173, align 8
  %174 = load ptr, ptr %6, align 8
  %175 = call i32 @__pm_runtime_suspend(ptr noundef %174, i32 noundef 13) #7
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_func(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_wait_bus_not_busy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_dw_xfer_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  tail call void @__i2c_dw_disable(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.i2c_msg, ptr %4, i32 %6, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 16
  %10 = zext i16 %9 to i32
  %11 = shl nuw nsw i16 %9, 8
  %12 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 16, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = load ptr, ptr %12, align 4
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr %struct.i2c_msg, ptr %4, i32 %16
  %18 = load i16, ptr %17, align 4
  %19 = or i16 %18, %11
  %20 = zext i16 %19 to i32
  %21 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 4, i32 noundef %20) #7
  tail call void @i2c_dw_disable_int(ptr noundef %0) #7
  %22 = load ptr, ptr %12, align 4
  %23 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 108, i32 noundef 1) #7
  %24 = load ptr, ptr %12, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 156, ptr noundef nonnull %2) #7
  %26 = load ptr, ptr %12, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 64, ptr noundef nonnull %2) #7
  %28 = load ptr, ptr %12, align 4
  %29 = call i32 @regmap_write(ptr noundef %28, i32 noundef 48, i32 noundef 596) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_handle_tx_abort(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_check_stopbit(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call i64 @ktime_get() #7
  %4 = add i64 %3, 20000000
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 44, ptr noundef nonnull %2) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %19, %1
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = call i64 @ktime_get() #7
  %15 = icmp sgt i64 %14, %4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 44, ptr noundef nonnull %2) #7
  br label %23

19:                                               ; preds = %13
  call void @usleep_range_state(i32 noundef 276, i32 noundef 1100, i32 noundef 2) #7
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 44, ptr noundef nonnull %2) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %9, label %23

23:                                               ; preds = %19, %16, %9, %1
  %24 = phi i32 [ %18, %16 ], [ %7, %1 ], [ 0, %9 ], [ %21, %19 ]
  %25 = icmp ne i32 %24, 0
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %25, i1 true, i1 %28
  %30 = select i1 %29, i32 0, i32 -110
  %31 = select i1 %25, i32 %24, i32 %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.11, i32 noundef %31) #8
  br label %35

35:                                               ; preds = %33, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_dw_prepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_dw_disable(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %7 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %3, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_dw_unprepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %3, i1 noundef zeroext true) #7
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_deassert(ptr noundef %6) #7
  %8 = tail call i32 @i2c_dw_init_master(ptr noundef %3)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_prepare_clk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 412555, i64 2147902526, i64 2147902552, i64 2147902599, i64 2147902621, i64 2147902649, i64 2147902669}
!10 = !{i64 2147914738, i64 2147914764, i64 2147914793, i64 2147914827, i64 2147914858, i64 2147914881}
!11 = !{i64 2147914245}
!12 = !{i64 399124, i64 399149, i64 399171, i64 399187, i64 399199, i64 399219, i64 399243, i64 399259, i64 399271}
!13 = !{i64 2147914371}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 1, i32 4000, i32 1}
