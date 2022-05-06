; ModuleID = '/llk/IR/arch/arm/mach-tegra/pm.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_lp1_iram = type { ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@__tegra_cpu_reset_handler_data = external dso_local global [7 x i32], align 4
@tegra_lp2_lock = internal global %struct.spinlock zeroinitializer, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [78 x i8] c"\013%s: unable to allocate memory for SDRAMself-refresh -- LP0/LP1 unavailable\0A\00", align 1
@__func__.tegra_pm_init_suspend = private unnamed_addr constant [22 x i8] c"tegra_pm_init_suspend\00", align 1
@tegra_sleep_func = internal unnamed_addr global ptr null, align 4
@tegra_suspend_ops = internal constant %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr null, ptr null, ptr @tegra_suspend_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_lp1_iram = dso_local local_unnamed_addr global %struct.tegra_lp1_iram zeroinitializer, align 4
@tegra_tear_down_cpu = dso_local local_unnamed_addr global ptr null, align 4
@tegra_sleep_core_finish = dso_local local_unnamed_addr global ptr null, align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"include/linux/clk/tegra.h\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"arch/arm/mach-tegra/pm.c\00", align 1
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@iram_save_size = internal unnamed_addr global i32 0, align 4
@iram_save_addr = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"\016Entering suspend state %s\0A\00", align 1
@lp_state = internal unnamed_addr constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LP2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LP1\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LP0\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_pm_clear_cpu_in_lp2() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #9
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #9
  %6 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %7 = shl nuw i32 1, %5
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

11:                                               ; preds = %0
  %12 = xor i32 %7, -1
  %13 = and i32 %6, %12
  store i32 %13, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %14 = load i16, ptr @tegra_lp2_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @tegra_lp2_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler_start() #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_pm_set_cpu_in_lp2() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #9
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #9
  %6 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %7 = shl nuw i32 1, %5
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !14

10:                                               ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

11:                                               ; preds = %0
  %12 = or i32 %6, %7
  store i32 %12, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %13 = load i16, ptr @tegra_lp2_lock, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr @tegra_lp2_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pm_enter_lp2() local_unnamed_addr #0 {
  %1 = tail call zeroext i8 @tegra_get_chip_id() #9
  switch i8 %1, label %2 [
    i8 32, label %6
    i8 48, label %6
  ]

2:                                                ; preds = %0
  %3 = tail call i32 @flowctrl_read_cpu_csr(i32 noundef 0) #9
  %4 = and i32 %3, -12289
  %5 = or i32 %4, 8192
  tail call void @flowctrl_write_cpu_csr(i32 noundef 0, i32 noundef %5) #9
  br label %6

6:                                                ; preds = %2, %0, %0
  tail call void @tegra_pmc_enter_suspend_mode(i32 noundef 1) #9
  %7 = tail call i32 @cpu_cluster_pm_enter() #9
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !14

12:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

13:                                               ; preds = %6
  %14 = load i32, ptr @__cpu_logical_map, align 4
  %15 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %16 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 9, ptr noundef null) #9
  br label %21

20:                                               ; preds = %13
  tail call void %17() #9
  br label %21

21:                                               ; preds = %20, %19
  tail call void @flowctrl_cpu_suspend_enter(i32 noundef %14) #9
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %23 = shl i32 %22, 12
  %24 = add i32 %23, 1073741824
  %25 = tail call i32 @cpu_suspend(i32 noundef %24, ptr noundef nonnull @tegra_sleep_cpu) #9
  %26 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void %26() #9
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, ptr %9, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !14

32:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !17
  unreachable

33:                                               ; preds = %29
  %34 = load i32, ptr @__cpu_logical_map, align 4
  %35 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %36 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !8

39:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 9, ptr noundef null) #9
  br label %41

40:                                               ; preds = %33
  tail call void %37() #9
  br label %41

41:                                               ; preds = %40, %39
  tail call void @flowctrl_cpu_suspend_exit(i32 noundef %34) #9
  %42 = tail call i32 @cpu_cluster_pm_exit() #9
  %43 = load ptr, ptr @firmware_ops, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call i32 %44(i32 noundef 5) #9
  br label %48

48:                                               ; preds = %46, %41
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sleep_cpu(i32 noundef %0) #0 {
  %2 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %3 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i1 %4() #9
  br i1 %7, label %9, label %8, !prof !14

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 142, i32 noundef 9, ptr noundef null) #9
  ret i32 -16

9:                                                ; preds = %6, %1
  %10 = tail call zeroext i1 @trusted_foundations_registered() #9
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 4), align 4
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void %11() #9
  br label %15

15:                                               ; preds = %14, %9
  %16 = load ptr, ptr @firmware_ops, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(i32 noundef 3) #9
  br label %21

21:                                               ; preds = %19, %15
  tail call void @setup_mm_for_reboot() #9
  %22 = tail call i32 @tegra_sleep_cpu_finish(i32 noundef %0) #9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @tegra_pm_validate_suspend_mode(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @llvm.umin.i32(i32 %0, i32 2)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_pm_init_suspend() local_unnamed_addr #0 {
  %1 = tail call i32 @tegra_pmc_get_suspend_mode() #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %40, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @tegra_get_chip_id() #9
  switch i8 %4, label %8 [
    i8 32, label %6
    i8 48, label %5
    i8 53, label %5
    i8 64, label %5
  ]

5:                                                ; preds = %3, %3, %3
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi ptr [ @tegra30_tear_down_cpu, %5 ], [ @tegra20_tear_down_cpu, %3 ]
  store ptr %7, ptr @tegra_tear_down_cpu, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %37, label %10

10:                                               ; preds = %8
  %11 = tail call zeroext i8 @tegra_get_chip_id() #9
  switch i8 %11, label %14 [
    i8 32, label %12
    i8 48, label %13
    i8 53, label %13
    i8 64, label %13
  ]

12:                                               ; preds = %10
  tail call void @tegra20_lp1_iram_hook() #9
  br label %14

13:                                               ; preds = %10, %10, %10
  tail call void @tegra30_lp1_iram_hook() #9
  br label %14

14:                                               ; preds = %13, %12, %10
  %15 = load ptr, ptr @tegra_lp1_iram, align 4
  %16 = icmp ne ptr %15, null
  %17 = load ptr, ptr getelementptr inbounds (%struct.tegra_lp1_iram, ptr @tegra_lp1_iram, i32 0, i32 1), align 4
  %18 = icmp ne ptr %17, null
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = ptrtoint ptr %17 to i32
  %22 = ptrtoint ptr %15 to i32
  %23 = sub i32 %21, %22
  store i32 %23, ptr @iram_save_size, align 4
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #10
  store ptr %24, ptr @iram_save_addr, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @tegra_get_chip_id() #9
  switch i8 %27, label %30 [
    i8 32, label %28
    i8 48, label %29
    i8 53, label %29
    i8 64, label %29
  ]

28:                                               ; preds = %26
  tail call void @tegra20_sleep_core_init() #9
  br label %30

29:                                               ; preds = %26, %26, %26
  tail call void @tegra30_sleep_core_init() #9
  br label %30

30:                                               ; preds = %29, %28, %26
  %31 = load ptr, ptr @tegra_sleep_core_finish, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %20, %14
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tegra_pm_init_suspend) #11
  tail call void @tegra_pmc_set_suspend_mode(i32 noundef 1) #9
  br label %37

35:                                               ; preds = %30
  %36 = icmp eq i32 %1, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %35, %33, %8
  %38 = phi ptr [ @tegra_sleep_core, %35 ], [ @tegra_sleep_cpu, %8 ], [ @tegra_sleep_cpu, %33 ]
  store ptr %38, ptr @tegra_sleep_func, align 4
  br label %39

39:                                               ; preds = %37, %35
  tail call void @suspend_set_ops(ptr noundef nonnull @tegra_suspend_ops) #9
  br label %40

40:                                               ; preds = %39, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_get_suspend_mode() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pmc_set_suspend_mode(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sleep_core(i32 noundef %0) #4 {
  %2 = tail call zeroext i1 @trusted_foundations_registered() #9
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @outer_disable() #9
  br label %4

4:                                                ; preds = %3, %1
  %5 = load ptr, ptr @firmware_ops, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 %6(i32 noundef 1) #9
  br label %10

10:                                               ; preds = %8, %4
  tail call void @setup_mm_for_reboot() #9
  %11 = load ptr, ptr @tegra_sleep_core_finish, align 4
  tail call void %11(i32 noundef %0) #9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pm_park_secondary_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void @tegra_disable_clean_inv_dcache(i32 noundef 0) #9
  %4 = tail call zeroext i8 @tegra_get_chip_id() #9
  %5 = icmp eq i8 %4, 32
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @tegra20_hotplug_shutdown() #9
  br label %8

7:                                                ; preds = %3
  tail call void @tegra30_hotplug_shutdown() #9
  br label %8

8:                                                ; preds = %7, %6, %1
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_disable_clean_inv_dcache(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_hotplug_shutdown() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_hotplug_shutdown() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flowctrl_read_cpu_csr(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_csr(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pmc_enter_suspend_mode(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_cpu_suspend_enter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trusted_foundations_registered() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_sleep_cpu_finish(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_cpu_suspend_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_tear_down_cpu() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_tear_down_cpu() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_lp1_iram_hook() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_lp1_iram_hook() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_sleep_core_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_sleep_core_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @outer_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_suspend_enter(i32 noundef %0) #0 {
  %2 = tail call i32 @tegra_pmc_get_suspend_mode() #9
  %3 = icmp ugt i32 %2, 3
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 351, i32 noundef 9, ptr noundef null) #9
  br label %91

5:                                                ; preds = %1
  %6 = getelementptr [4 x ptr], ptr @lp_state, i32 0, i32 %2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %7) #11
  %9 = tail call zeroext i8 @tegra_get_chip_id() #9
  switch i8 %9, label %10 [
    i8 32, label %14
    i8 48, label %14
  ]

10:                                               ; preds = %5
  %11 = tail call i32 @flowctrl_read_cpu_csr(i32 noundef 0) #9
  %12 = and i32 %11, -12289
  %13 = or i32 %12, 8192
  tail call void @flowctrl_write_cpu_csr(i32 noundef 0, i32 noundef %13) #9
  br label %14

14:                                               ; preds = %10, %5, %5
  tail call void @tegra_pmc_enter_suspend_mode(i32 noundef %2) #9
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #9, !srcloc !20
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !14

19:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

20:                                               ; preds = %14
  %21 = load i32, ptr @__cpu_logical_map, align 4
  %22 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %23 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 9, ptr noundef null) #9
  br label %28

27:                                               ; preds = %20
  tail call void %24() #9
  br label %28

28:                                               ; preds = %27, %26
  tail call void @flowctrl_cpu_suspend_enter(i32 noundef %21) #9
  switch i32 %2, label %46 [
    i32 2, label %29
    i32 1, label %33
  ]

29:                                               ; preds = %28
  %30 = load ptr, ptr @iram_save_addr, align 4
  %31 = load i32, ptr @iram_save_size, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr nonnull align 4096 inttoptr (i32 -29356032 to ptr), i32 %31, i1 false) #9
  %32 = load ptr, ptr @tegra_lp1_iram, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4096 inttoptr (i32 -29356032 to ptr), ptr align 1 %32, i32 %31, i1 false) #9
  store i32 1, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  br label %46

33:                                               ; preds = %28
  %34 = load i32, ptr %16, align 8
  %35 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #9
  %37 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %38 = shl nuw i32 1, %36
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !14

41:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

42:                                               ; preds = %33
  %43 = or i32 %37, %38
  store i32 %43, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %44 = load i16, ptr @tegra_lp2_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @tegra_lp2_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %46

46:                                               ; preds = %42, %29, %28
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %48 = shl i32 %47, 12
  %49 = add i32 %48, 1073741824
  %50 = load ptr, ptr @tegra_sleep_func, align 4
  %51 = tail call i32 @cpu_suspend(i32 noundef %49, ptr noundef %50) #9
  %52 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  tail call void %52() #9
  br label %55

55:                                               ; preds = %54, %46
  switch i32 %2, label %73 [
    i32 2, label %56
    i32 1, label %59
  ]

56:                                               ; preds = %55
  %57 = load ptr, ptr @iram_save_addr, align 4
  %58 = load i32, ptr @iram_save_size, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4096 inttoptr (i32 -29356032 to ptr), ptr align 1 %57, i32 %58, i1 false) #9
  store i32 0, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  br label %73

59:                                               ; preds = %55
  %60 = load i32, ptr %16, align 8
  %61 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #9
  %63 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %64 = shl nuw i32 1, %62
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

68:                                               ; preds = %59
  %69 = xor i32 %64, -1
  %70 = and i32 %63, %69
  store i32 %70, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %71 = load i16, ptr @tegra_lp2_lock, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr @tegra_lp2_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %73

73:                                               ; preds = %68, %56, %55
  %74 = load i32, ptr %16, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !14

76:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !17
  unreachable

77:                                               ; preds = %73
  %78 = load i32, ptr @__cpu_logical_map, align 4
  %79 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %80 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %79, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84, !prof !8

83:                                               ; preds = %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 9, ptr noundef null) #9
  br label %85

84:                                               ; preds = %77
  tail call void %81() #9
  br label %85

85:                                               ; preds = %84, %83
  tail call void @flowctrl_cpu_suspend_exit(i32 noundef %78) #9
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #9, !srcloc !21
  %86 = load ptr, ptr @firmware_ops, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = tail call i32 %87(i32 noundef 5) #9
  br label %91

91:                                               ; preds = %89, %85, %4
  %92 = phi i32 [ -22, %4 ], [ 0, %85 ], [ 0, %89 ]
  ret i32 %92
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2153579853, i64 2153580342, i64 2153579890, i64 2153579946, i64 2153579980, i64 2153580004, i64 2153580045, i64 2153580066, i64 2153580094, i64 2153580128}
!10 = !{i64 2148873901}
!11 = !{i64 2148869725}
!12 = !{i64 2148869800, i64 2148869827, i64 2148869874, i64 2148869896, i64 2148869924, i64 2148869944}
!13 = !{i64 2148896904}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153585323, i64 2153585812, i64 2153585360, i64 2153585416, i64 2153585450, i64 2153585474, i64 2153585515, i64 2153585536, i64 2153585564, i64 2153585598}
!16 = !{i64 2153574438, i64 2153574927, i64 2153574475, i64 2153574531, i64 2153574565, i64 2153574589, i64 2153574630, i64 2153574651, i64 2153574679, i64 2153574713}
!17 = !{i64 2153573269, i64 2153573757, i64 2153573306, i64 2153573362, i64 2153573396, i64 2153573420, i64 2153573461, i64 2153573482, i64 2153573510, i64 2153573544}
!18 = !{i64 2153586952, i64 2153587441, i64 2153586989, i64 2153587045, i64 2153587079, i64 2153587103, i64 2153587144, i64 2153587165, i64 2153587193, i64 2153587227}
!19 = !{i64 2153588380, i64 2153588869, i64 2153588417, i64 2153588473, i64 2153588507, i64 2153588531, i64 2153588572, i64 2153588593, i64 2153588621, i64 2153588655}
!20 = !{i64 2153609287}
!21 = !{i64 2153609524}
