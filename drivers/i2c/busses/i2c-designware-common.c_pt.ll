; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-designware-common.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_validate_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_validate_speed\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_validate_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_adjust_bus_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_adjust_bus_speed\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_adjust_bus_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_prepare_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_prepare_clk\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_prepare_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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

@__const.i2c_dw_init_regmap.map_cfg = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr @dw_reg_read, ptr @dw_reg_write, ptr null, i8 0, [3 x i8] zeroinitializer, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unknown Synopsys component type: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to init the registers map\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"%d Hz is unsupported, only 100kHz, 400kHz, 1MHz and 3.4MHz are supported\0A\00", align 1
@__kstrtab_i2c_dw_validate_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_validate_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_validate_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_validate_speed to i32), ptr @__kstrtab_i2c_dw_validate_speed, ptr @__kstrtabns_i2c_dw_validate_speed }, section "___ksymtab_gpl+i2c_dw_validate_speed", align 4
@__kstrtab_i2c_dw_adjust_bus_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_adjust_bus_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_adjust_bus_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_adjust_bus_speed to i32), ptr @__kstrtab_i2c_dw_adjust_bus_speed, ptr @__kstrtabns_i2c_dw_adjust_bus_speed }, section "___ksymtab_gpl+i2c_dw_adjust_bus_speed", align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Hardware too old to adjust SDA hold time.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"timeout in disabling adapter\0A\00", align 1
@i2c_dw_clk_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"drivers/i2c/busses/i2c-designware-common.c\00", align 1
@__kstrtab_i2c_dw_prepare_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_prepare_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_prepare_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_prepare_clk to i32), ptr @__kstrtab_i2c_dw_prepare_clk, ptr @__kstrtabns_i2c_dw_prepare_clk }, section "___ksymtab_gpl+i2c_dw_prepare_clk", align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"couldn't acquire bus ownership\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@__func__.i2c_dw_handle_tx_abort = private unnamed_addr constant [23 x i8] c"i2c_dw_handle_tx_abort\00", align 1
@abort_sources = internal unnamed_addr constant [16 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr null, ptr @.str.15, ptr null, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@__UNIQUE_ID_description256 = internal constant [73 x i8] c"i2c_designware_core.description=Synopsys DesignWare I2C bus adapter core\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [64 x i8] c"i2c_designware_core.file=drivers/i2c/busses/i2c-designware-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [32 x i8] c"i2c_designware_core.license=GPL\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"slave address not acknowledged (7bit mode)\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"first address byte not acknowledged (10bit mode)\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"second address byte not acknowledged (10bit mode)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"data not acknowledged\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"no acknowledgement for a general call\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"read after general call\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"start byte acknowledged\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"trying to send start byte when restart is disabled\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"trying to read when restart is disabled (10bit mode)\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"trying to use disabled adapter\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"lost arbitration\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"read command so flush old data in the TX FIFO\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"slave lost the bus while transmitting data to a remote master\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"incorrect slave-transmitter mode configuration\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__ksymtab_i2c_dw_adjust_bus_speed, ptr @__ksymtab_i2c_dw_prepare_clk, ptr @__ksymtab_i2c_dw_validate_speed], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_init_regmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.regmap_config, align 4
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %2, ptr noundef nonnull align 4 dereferenceable(172) @__const.i2c_dw_init_regmap.map_cfg, i32 172, i1 false)
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %48

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 42
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8() #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #10
  br label %48

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 252
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %20 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 43
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void %21() #9
  br label %24

24:                                               ; preds = %23, %15
  %25 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 3840
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 19
  store i32 1140, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %24
  switch i32 %19, label %33 [
    i32 1073829700, label %35
    i32 320, label %32
    i32 1146552640, label %40
  ]

32:                                               ; preds = %31
  br label %35

33:                                               ; preds = %31
  %34 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %19) #10
  br label %48

35:                                               ; preds = %32, %31
  %36 = phi ptr [ @dw_reg_read_word, %32 ], [ @dw_reg_read_swab, %31 ]
  %37 = phi ptr [ @dw_reg_write_word, %32 ], [ @dw_reg_write_swab, %31 ]
  %38 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 15
  store ptr %36, ptr %38, align 4
  %39 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 16
  store ptr %37, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load ptr, ptr %0, align 8
  %42 = call ptr @__devm_regmap_init(ptr noundef %41, ptr noundef null, ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #9
  store ptr %42, ptr %3, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.1) #10
  %46 = load ptr, ptr %3, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %48

48:                                               ; preds = %44, %40, %33, %13, %1
  %49 = phi i32 [ %47, %44 ], [ -19, %33 ], [ 0, %1 ], [ %11, %13 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %2) #9
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  store i32 %7, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #9, !srcloc !10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_acquire_lock(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3() #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #10
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi i32 [ %6, %8 ], [ 0, %1 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_dw_release_lock(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 43
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3() #9
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_reg_read_swab(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_reg_write_swab(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @llvm.bswap.i32(i32 %2)
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #9, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_reg_read_word(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #9, !srcloc !11
  %8 = zext i16 %7 to i32
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  %11 = getelementptr i8, ptr %10, i32 2
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #9, !srcloc !11
  %13 = zext i16 %12 to i32
  %14 = shl nuw i32 %13, 16
  %15 = or i32 %14, %8
  store i32 %15, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_reg_write_word(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %2 to i16
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %4) #9, !srcloc !12
  %8 = lshr i32 %2, 16
  %9 = trunc i32 %8 to i16
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = getelementptr i8, ptr %11, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %9) #9, !srcloc !12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_validate_speed(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 32
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %4 [
    i32 3400000, label %6
    i32 1000000, label %6
    i32 400000, label %6
    i32 100000, label %6
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %3) #10
  br label %6

6:                                                ; preds = %4, %1, %1, %1, %1
  %7 = phi i32 [ -22, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @i2c_dw_adjust_bus_speed(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 32
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 400000, i32 %3
  store i32 %5, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @i2c_dw_scl_hcnt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 %2, i32 0
  %8 = add i32 %7, %1
  %9 = select i1 %6, i32 -3, i32 -8
  %10 = mul i32 %8, %0
  %11 = add i32 %10, 500000
  %12 = udiv i32 %11, 1000000
  %13 = add nsw i32 %12, %9
  %14 = add i32 %13, %4
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @i2c_dw_scl_lcnt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = add i32 %2, %1
  %6 = mul i32 %5, %0
  %7 = add i32 %6, 500000
  %8 = udiv i32 %7, 1000000
  %9 = add i32 %3, -1
  %10 = add i32 %9, %8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_set_sda_hold(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !13
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4() #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6) #10
  br label %53

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 248, ptr noundef nonnull %2) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %11
  %17 = load i32, ptr %2, align 4
  %18 = icmp ugt i32 %17, 825307433
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 33
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load ptr, ptr %12, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 124, ptr noundef %20) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i32, ptr %20, align 8
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i32 [ %28, %27 ], [ %21, %19 ]
  %31 = and i32 %30, 16711680
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = or i32 %30, 65536
  store i32 %34, ptr %20, align 8
  br label %47

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 48
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 %37(ptr noundef %0) #9
  br label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 33
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.3) #10
  store i32 0, ptr %42, align 8
  br label %47

47:                                               ; preds = %45, %41, %39, %33, %29, %23, %11
  %48 = phi i32 [ %14, %11 ], [ 0, %29 ], [ 0, %33 ], [ %25, %23 ], [ 0, %39 ], [ 0, %45 ], [ 0, %41 ]
  %49 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 43
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  call void %50() #9
  br label %53

53:                                               ; preds = %52, %47, %9
  %54 = phi i32 [ %7, %9 ], [ %48, %47 ], [ %48, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__i2c_dw_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !13
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %13, %1
  %5 = phi i32 [ 100, %1 ], [ %14, %13 ]
  %6 = load ptr, ptr %3, align 4
  %7 = call i32 @regmap_write(ptr noundef %6, i32 noundef 108, i32 noundef 0) #9
  %8 = load ptr, ptr %3, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 156, ptr noundef nonnull %2) #9
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  call void @usleep_range_state(i32 noundef 25, i32 noundef 250, i32 noundef 2) #9
  %14 = add nsw i32 %5, -1
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %16, label %4

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.4) #10
  br label %18

18:                                               ; preds = %16, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_clk_rate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @i2c_dw_clk_rate.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %1
  store i1 true, ptr @i2c_dw_clk_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 471, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %13, label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 %11(ptr noundef %0) #9
  br label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ %12, %10 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_prepare_clk(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  br label %32

8:                                                ; preds = %2
  br i1 %1, label %9, label %29

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #9
  br label %32

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = tail call i32 @clk_enable(ptr noundef %19) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i32 [ %23, %25 ], [ %20, %18 ]
  %28 = load ptr, ptr %10, align 8
  tail call void @clk_disable(ptr noundef %28) #9
  tail call void @clk_unprepare(ptr noundef %28) #9
  br label %32

29:                                               ; preds = %8
  tail call void @clk_disable(ptr noundef %4) #9
  tail call void @clk_unprepare(ptr noundef %4) #9
  %30 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  tail call void @clk_disable(ptr noundef %31) #9
  tail call void @clk_unprepare(ptr noundef %31) #9
  br label %32

32:                                               ; preds = %29, %26, %22, %17, %9, %6
  %33 = phi i32 [ %7, %6 ], [ 0, %29 ], [ %27, %26 ], [ 0, %22 ], [ %15, %17 ], [ %12, %9 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_wait_bus_not_busy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !13
  %3 = tail call i64 @ktime_get() #9
  %4 = add i64 %3, 20000000
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 112, ptr noundef nonnull %2) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %19, %1
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = call i64 @ktime_get() #9
  %15 = icmp sgt i64 %14, %4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 112, ptr noundef nonnull %2) #9
  br label %23

19:                                               ; preds = %13
  call void @usleep_range_state(i32 noundef 276, i32 noundef 1100, i32 noundef 2) #9
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 112, ptr noundef nonnull %2) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %9, label %23

23:                                               ; preds = %19, %16, %9, %1
  %24 = phi i32 [ %18, %16 ], [ %7, %1 ], [ 0, %9 ], [ %21, %19 ]
  %25 = icmp ne i32 %24, 0
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %25, i1 true, i1 %28
  %30 = select i1 %29, i32 0, i32 -110
  %31 = select i1 %25, i32 %24, i32 %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.7) #10
  %35 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 25
  %36 = call i32 @i2c_recover_bus(ptr noundef %35) #9
  %37 = load ptr, ptr %5, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef 112, ptr noundef nonnull %2) #9
  %39 = load i32, ptr %2, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 %31
  br label %43

43:                                               ; preds = %33, %23
  %44 = phi i32 [ 0, %23 ], [ %42, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_handle_tx_abort(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %2, align 4
  %5 = and i32 %4, 31
  %6 = icmp eq i32 %5, 0
  %7 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 16, i32 noundef 0) #9
  %8 = icmp ult i32 %7, 16
  br i1 %6, label %15, label %9

9:                                                ; preds = %1
  br i1 %8, label %10, label %32

10:                                               ; preds = %10, %9
  %11 = phi i32 [ %13, %10 ], [ %7, %9 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 16, i32 noundef %12) #9
  %14 = icmp ult i32 %13, 16
  br i1 %14, label %10, label %32

15:                                               ; preds = %1
  br i1 %8, label %16, label %24

16:                                               ; preds = %16, %15
  %17 = phi i32 [ %22, %16 ], [ %7, %15 ]
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr [16 x ptr], ptr @abort_sources, i32 0, i32 %17
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.i2c_dw_handle_tx_abort, ptr noundef %20) #10
  %21 = add nuw nsw i32 %17, 1
  %22 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 16, i32 noundef %21) #9
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %16, label %24

24:                                               ; preds = %16, %15
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, 4096
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = and i32 %25, 32
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 -5, i32 -22
  br label %32

32:                                               ; preds = %28, %24, %10, %9
  %33 = phi i32 [ -11, %24 ], [ %31, %28 ], [ -121, %9 ], [ -121, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_set_fifo_size(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !13
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 244, ptr noundef nonnull %2) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = add nuw nsw i32 %10, 1
  %12 = lshr i32 %8, 8
  %13 = and i32 %12, 255
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 29
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  store i32 %11, ptr %15, align 4
  %19 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 30
  store i32 %14, ptr %19, align 8
  br label %27

20:                                               ; preds = %7
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = call i32 @llvm.umin.i32(i32 %16, i32 %11)
  store i32 %23, ptr %15, align 4
  %24 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 30
  %25 = load i32, ptr %24, align 8
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 %14)
  store i32 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %22, %20, %18, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @i2c_dw_func(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_dw_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !13
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %14, %1
  %6 = phi i32 [ 100, %1 ], [ %15, %14 ]
  %7 = load ptr, ptr %4, align 4
  %8 = call i32 @regmap_write(ptr noundef %7, i32 noundef 108, i32 noundef 0) #9
  %9 = load ptr, ptr %4, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 156, ptr noundef nonnull %2) #9
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  call void @usleep_range_state(i32 noundef 25, i32 noundef 250, i32 noundef 2) #9
  %15 = add nsw i32 %6, -1
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %17, label %5

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.4) #10
  br label %19

19:                                               ; preds = %17, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %20 = load ptr, ptr %4, align 4
  %21 = call i32 @regmap_write(ptr noundef %20, i32 noundef 48, i32 noundef 0) #9
  %22 = load ptr, ptr %4, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 64, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_dw_disable_int(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 48, i32 noundef 0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 5399985}
!9 = !{i64 2154211070}
!10 = !{i64 5399567}
!11 = !{i64 5399147}
!12 = !{i64 5398947}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 1, i32 2000}
