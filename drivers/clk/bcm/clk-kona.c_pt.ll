; ModuleID = '/llk/IR/drivers/clk/bcm/clk-kona.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-kona.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon = type { i32, i32, i32, i32, i64 }
%struct.bcm_clk_div = type { %union.anon, i32 }
%union.anon = type { %struct.anon }
%struct.kona_clk = type { %struct.clk_hw, %struct.clk_init_data, ptr, i32, %union.anon.7 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.anon.7 = type { ptr }
%struct.peri_clk_data = type { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [0 x ptr] }
%struct.bcm_clk_policy = type { i32, i32 }
%struct.bcm_clk_gate = type { i32, i32, i32, i32, i32 }
%struct.bcm_clk_hyst = type { i32, i32, i32 }
%struct.bcm_clk_trig = type { i32, i32, i32 }
%struct.bcm_clk_sel = type { i32, i32, i32, i32, ptr, i8 }
%struct.ccu_data = type { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [0 x %struct.kona_clk] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ccu_policy = type { %struct.bcm_lvm_en, %struct.bcm_policy_ctl }
%struct.bcm_lvm_en = type { i32, i32 }
%struct.bcm_policy_ctl = type { i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@kona_peri_clk_ops = dso_local local_unnamed_addr global %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @kona_peri_clk_enable, ptr @kona_peri_clk_disable, ptr @kona_peri_clk_is_enabled, ptr null, ptr null, ptr null, ptr @kona_peri_clk_recalc_rate, ptr null, ptr @kona_peri_clk_determine_rate, ptr @kona_peri_clk_set_parent, ptr @kona_peri_clk_get_parent, ptr @kona_peri_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [32 x i8] c"\013%s: failed to %s gate for %s\0A\00", align 1
@__func__.clk_gate = private unnamed_addr constant [9 x i8] c"clk_gate\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\014%s: invalid gate disable request (ignoring)\0A\00", align 1
@__func__.__clk_gate = private unnamed_addr constant [11 x i8] c"__clk_gate\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"\014%s: %s/0x%04x bit %u was never %s\0A\00", align 1
@__func__.__ccu_wait_bit = private unnamed_addr constant [15 x i8] c"__ccu_wait_bit\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@kona_peri_clk_determine_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"drivers/clk/bcm/clk-kona.c\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\013%s: gating failure for %s\0A\00", align 1
@__func__.kona_peri_clk_set_parent = private unnamed_addr constant [25 x i8] c"kona_peri_clk_set_parent\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\013%s: %strigger failed for %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pre-\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"\013%s: out-of-range parent selector %u (%s 0x%04x)\0A\00", align 1
@__func__.selector_read_index = private unnamed_addr constant [20 x i8] c"selector_read_index\00", align 1
@__func__.kona_peri_clk_set_rate = private unnamed_addr constant [23 x i8] c"kona_peri_clk_set_rate\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"\013%s: trigger failed for %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\013%s: access already enabled for %s\0A\00", align 1
@__func__.__ccu_write_enable = private unnamed_addr constant [19 x i8] c"__ccu_write_enable\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"\013%s: error initializing policy for %s\0A\00", align 1
@__func__.__peri_clk_init = private unnamed_addr constant [16 x i8] c"__peri_clk_init\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\013%s: error initializing gate for %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"\013%s: error initializing divider for %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"\013%s: error initializing pre-divider for %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\013%s: error initializing selector for %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"\013%s: unable to stop CCU %s policy engine\0A\00", align 1
@__func__.policy_init = private unnamed_addr constant [12 x i8] c"policy_init\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"\013%s: unable to restart CCU %s policy engine\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"\013%s: ccu %s policy engine already stopped\0A\00", align 1
@__func__.__ccu_policy_engine_stop = private unnamed_addr constant [25 x i8] c"__ccu_policy_engine_stop\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"\013%s: ccu %s policy engine never stopped\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"\013%s: ccu %s policy engine wouldn't go idle\0A\00", align 1
@__func__.__ccu_policy_engine_start = private unnamed_addr constant [26 x i8] c"__ccu_policy_engine_start\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"\013%s: ccu %s policy engine never started\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"\013%s: access wasn't enabled for %s\0A\00", align 1
@__func__.__ccu_write_disable = private unnamed_addr constant [20 x i8] c"__ccu_write_disable\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @scaled_div_build(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

6:                                                ; preds = %3
  %7 = icmp ugt i32 %2, 999999999
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 73, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

9:                                                ; preds = %6
  %10 = zext i32 %1 to i64
  %11 = mul nuw nsw i64 %10, 1000000000
  %12 = zext i32 %2 to i64
  %13 = add nuw nsw i64 %11, %12
  %14 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 %13, %16
  %18 = add i64 %17, 500000000
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %18, i32 0) #8, !srcloc !11
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = extractvalue { i64, i32 } %19, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %18, i64 %20, i32 %21) #8, !srcloc !12
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = lshr i64 %23, 29
  ret i64 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @scaled_div_max(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_clk_div, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 8
  %8 = zext i32 %7 to i64
  br label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = add nuw i64 %18, %14
  br label %20

20:                                               ; preds = %9, %6
  %21 = phi i64 [ %8, %6 ], [ %19, %9 ]
  ret i64 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @clk_gate(ptr noundef %6, ptr noundef %8, ptr noundef %4, i1 noundef zeroext true)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kona_peri_clk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @clk_gate(ptr noundef %6, ptr noundef %8, ptr noundef %4, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 1, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ccu_data, ptr %6, i32 0, i32 1
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %14 = load i32, ptr %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = load i32, ptr %4, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %25 = and i32 %24, %20
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %17, %11
  %28 = phi i1 [ %26, %17 ], [ true, %11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #7
  br label %29

29:                                               ; preds = %27, %1
  %30 = phi i1 [ %28, %27 ], [ true, %1 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 6
  %8 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 6, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %134, label %13

13:                                               ; preds = %2
  %14 = icmp slt i32 %1, 0
  br i1 %14, label %134, label %15

15:                                               ; preds = %13
  %16 = icmp eq ptr %8, null
  br i1 %16, label %82, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 4, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %82, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = zext i32 %1 to i64
  %27 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 4, i32 0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 %26, %29
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi i32 [ %31, %25 ], [ %1, %22 ]
  %34 = and i32 %10, 2
  %35 = icmp eq i32 %34, 0
  %36 = zext i32 %33 to i64
  br i1 %35, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 %36, %40
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i64 [ %41, %37 ], [ %36, %32 ]
  br i1 %24, label %47, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %8, align 8
  %46 = zext i32 %45 to i64
  br label %69

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ccu_data, ptr %6, i32 0, i32 1
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #7
  %50 = load i32, ptr %8, align 8
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #7
  %54 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 4, i32 0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 4, i32 0, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = shl i32 %59, %55
  %61 = and i32 %60, %53
  %62 = lshr i32 %61, %55
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 4, i32 0, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = add nuw i64 %67, %63
  br label %69

69:                                               ; preds = %47, %44
  %70 = phi i64 [ %46, %44 ], [ %68, %47 ]
  %71 = lshr i64 %70, 1
  %72 = add i64 %71, %43
  %73 = trunc i64 %70 to i32
  %74 = icmp ult i64 %72, 4294967296
  br i1 %74, label %75, label %79, !prof !15

75:                                               ; preds = %69
  %76 = trunc i64 %72 to i32
  %77 = udiv i32 %76, %73
  %78 = zext i32 %77 to i64
  br label %91

79:                                               ; preds = %69
  %80 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %73, i64 %72) #8, !srcloc !16
  %81 = extractvalue { i64, i64 } %80, 1
  br label %91

82:                                               ; preds = %17, %15
  %83 = and i32 %10, 2
  %84 = icmp eq i32 %83, 0
  %85 = zext i32 %1 to i64
  br i1 %84, label %86, label %91

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  %90 = shl i64 %85, %89
  br label %91

91:                                               ; preds = %86, %82, %79, %75
  %92 = phi i64 [ %78, %75 ], [ %81, %79 ], [ %90, %86 ], [ %85, %82 ]
  %93 = load i32, ptr %9, align 8
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %7, align 8
  %98 = zext i32 %97 to i64
  br label %121

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.ccu_data, ptr %6, i32 0, i32 1
  %101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %100) #7
  %102 = load i32, ptr %7, align 8
  %103 = load ptr, ptr %6, align 4
  %104 = getelementptr i8, ptr %103, i32 %102
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %100, i32 noundef %101) #7
  %106 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = shl nsw i32 -1, %109
  %111 = xor i32 %110, -1
  %112 = shl i32 %111, %107
  %113 = and i32 %112, %105
  %114 = lshr i32 %113, %107
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  %119 = shl nuw i64 1, %118
  %120 = add nuw i64 %119, %115
  br label %121

121:                                              ; preds = %99, %96
  %122 = phi i64 [ %98, %96 ], [ %120, %99 ]
  %123 = lshr i64 %122, 1
  %124 = add i64 %123, %92
  %125 = trunc i64 %122 to i32
  %126 = icmp ult i64 %124, 4294967296
  br i1 %126, label %127, label %130, !prof !15

127:                                              ; preds = %121
  %128 = trunc i64 %124 to i32
  %129 = udiv i32 %128, %125
  br label %134

130:                                              ; preds = %121
  %131 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %125, i64 %124) #8, !srcloc !16
  %132 = extractvalue { i64, i64 } %131, 1
  %133 = trunc i64 %132 to i32
  br label %134

134:                                              ; preds = %130, %127, %13, %2
  %135 = phi i32 [ %1, %2 ], [ 0, %13 ], [ %129, %127 ], [ %133, %130 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @kona_peri_clk_determine_rate.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %2
  store i1 true, ptr @kona_peri_clk_determine_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1038, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1, i32 5
  %13 = load i8, ptr %12, align 4
  %14 = icmp ult i8 %13, 2
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.peri_clk_data, ptr %17, i32 0, i32 6, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #7
  br label %35

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %1, align 4
  %27 = getelementptr inbounds %struct.peri_clk_data, ptr %17, i32 0, i32 6
  %28 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.peri_clk_data, ptr %17, i32 0, i32 4
  %31 = icmp eq i32 %26, 0
  %32 = select i1 %31, i32 1, i32 %26
  %33 = load i32, ptr %25, align 4
  %34 = tail call fastcc i32 @round_rate(ptr noundef %29, ptr noundef %27, ptr noundef %30, i32 noundef %32, i32 noundef %33, ptr noundef null) #7
  br label %35

35:                                               ; preds = %24, %22
  %36 = phi i32 [ %34, %24 ], [ %23, %22 ]
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %107, label %105

38:                                               ; preds = %11
  %39 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %40 = tail call i32 @clk_hw_get_rate(ptr noundef %39) #7
  %41 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.peri_clk_data, ptr %42, i32 0, i32 6, i32 1
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #7
  br label %58

49:                                               ; preds = %38
  %50 = load i32, ptr %1, align 4
  %51 = getelementptr inbounds %struct.peri_clk_data, ptr %42, i32 0, i32 6
  %52 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.peri_clk_data, ptr %42, i32 0, i32 4
  %55 = icmp eq i32 %50, 0
  %56 = select i1 %55, i32 1, i32 %50
  %57 = tail call fastcc i32 @round_rate(ptr noundef %53, ptr noundef %51, ptr noundef %54, i32 noundef %56, i32 noundef %40, ptr noundef null) #7
  br label %58

58:                                               ; preds = %49, %47
  %59 = phi i32 [ %57, %49 ], [ %48, %47 ]
  %60 = load i32, ptr %1, align 4
  %61 = sub i32 %59, %60
  %62 = tail call i32 @llvm.abs.i32(i32 %61, i1 false)
  %63 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %64 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %65 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %66 = zext i8 %13 to i32
  br label %67

67:                                               ; preds = %100, %58
  %68 = phi i32 [ %62, %58 ], [ %102, %100 ]
  %69 = phi i32 [ %59, %58 ], [ %101, %100 ]
  %70 = phi i32 [ 0, %58 ], [ %103, %100 ]
  %71 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %70) #7
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74, !prof !8

73:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1062, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

74:                                               ; preds = %67
  %75 = icmp eq ptr %71, %39
  br i1 %75, label %100, label %76

76:                                               ; preds = %74
  %77 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %71) #7
  %78 = load ptr, ptr %41, align 4
  %79 = getelementptr inbounds %struct.peri_clk_data, ptr %78, i32 0, i32 6, i32 1
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #7
  br label %93

85:                                               ; preds = %76
  %86 = load i32, ptr %1, align 4
  %87 = getelementptr inbounds %struct.peri_clk_data, ptr %78, i32 0, i32 6
  %88 = load ptr, ptr %63, align 4
  %89 = getelementptr inbounds %struct.peri_clk_data, ptr %78, i32 0, i32 4
  %90 = icmp eq i32 %86, 0
  %91 = select i1 %90, i32 1, i32 %86
  %92 = tail call fastcc i32 @round_rate(ptr noundef %88, ptr noundef %87, ptr noundef %89, i32 noundef %91, i32 noundef %77, ptr noundef null) #7
  br label %93

93:                                               ; preds = %85, %83
  %94 = phi i32 [ %92, %85 ], [ %84, %83 ]
  %95 = load i32, ptr %1, align 4
  %96 = sub i32 %94, %95
  %97 = tail call i32 @llvm.abs.i32(i32 %96, i1 false)
  %98 = icmp ult i32 %97, %68
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store ptr %71, ptr %64, align 4
  store i32 %77, ptr %65, align 4
  br label %100

100:                                              ; preds = %99, %93, %74
  %101 = phi i32 [ %69, %74 ], [ %94, %99 ], [ %69, %93 ]
  %102 = phi i32 [ %68, %74 ], [ %97, %99 ], [ %68, %93 ]
  %103 = add nuw nsw i32 %70, 1
  %104 = icmp eq i32 %103, %66
  br i1 %104, label %105, label %67

105:                                              ; preds = %100, %35
  %106 = phi i32 [ %36, %35 ], [ %101, %100 ]
  store i32 %106, ptr %1, align 4
  br label %107

107:                                              ; preds = %105, %35
  %108 = phi i32 [ %36, %35 ], [ 0, %105 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 7
  %6 = zext i8 %1 to i32
  %7 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 7, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %11, label %10, !prof !15

10:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1091, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 7, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 3
  %17 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 5
  %22 = select i1 %20, ptr %21, ptr %16
  %23 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.peri_clk_data, ptr %4, i32 0, i32 7, i32 5
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, %1
  br i1 %28, label %63, label %29

29:                                               ; preds = %15
  store i8 %1, ptr %26, align 4
  %30 = getelementptr inbounds %struct.ccu_data, ptr %24, i32 0, i32 1
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #7
  %32 = getelementptr inbounds %struct.ccu_data, ptr %24, i32 0, i32 2
  %33 = load i8, ptr %32, align 4, !range !19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ccu_data, ptr %24, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.__ccu_write_enable, ptr noundef %37) #9
  br label %41

39:                                               ; preds = %29
  store i8 1, ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 10855681) #7, !srcloc !21
  br label %41

41:                                               ; preds = %39, %35
  %42 = tail call fastcc i32 @__sel_commit(ptr noundef %24, ptr noundef %25, ptr noundef %5, ptr noundef %22) #7
  %43 = load i8, ptr %32, align 4, !range !19
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ccu_data, ptr %24, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.__ccu_write_disable, ptr noundef %47) #9
  br label %51

49:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %50 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 10855680) #7, !srcloc !21
  store i8 0, ptr %32, align 4
  br label %51

51:                                               ; preds = %49, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #7
  %52 = icmp eq i32 %42, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %51
  store i8 %27, ptr %26, align 4
  switch i32 %42, label %63 [
    i32 -6, label %54
    i32 -5, label %58
  ]

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.kona_peri_clk_set_parent, ptr noundef %56) #9
  br label %63

58:                                               ; preds = %53
  %59 = select i1 %20, ptr @.str.11, ptr @.str.10
  %60 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.kona_peri_clk_set_parent, ptr noundef nonnull %59, ptr noundef %61) #9
  br label %63

63:                                               ; preds = %58, %54, %53, %51, %15, %11
  %64 = phi i32 [ 0, %11 ], [ -5, %54 ], [ -5, %58 ], [ %42, %53 ], [ 0, %15 ], [ 0, %51 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @kona_peri_clk_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 7, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ccu_data, ptr %5, i32 0, i32 1
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = load i32, ptr %6, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 %13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  %17 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 7, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %7, align 4
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = shl i32 %21, %18
  %23 = and i32 %22, %16
  %24 = lshr i32 %23, %18
  %25 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 7, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 255
  br i1 %27, label %35, label %28, !prof !8

28:                                               ; preds = %10
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.peri_clk_data, ptr %3, i32 0, i32 7, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = and i32 %24, 255
  %34 = and i32 %26, 255
  br label %36

35:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 825, 0\0A.popsection", ""() #7, !srcloc !22
  unreachable

36:                                               ; preds = %41, %30
  %37 = phi i32 [ %42, %41 ], [ 0, %30 ]
  %38 = getelementptr i32, ptr %32, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %33
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i32 %37, 1
  %43 = icmp eq i32 %42, %34
  br i1 %43, label %44, label %36

44:                                               ; preds = %41, %28
  %45 = getelementptr inbounds %struct.ccu_data, ptr %5, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %6, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.selector_read_index, i32 noundef %24, ptr noundef %46, i32 noundef %47) #9
  br label %51

49:                                               ; preds = %36
  %50 = trunc i32 %37 to i8
  br label %51

51:                                               ; preds = %49, %44, %1
  %52 = phi i8 [ 0, %44 ], [ 0, %1 ], [ %50, %49 ]
  ret i8 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.peri_clk_data, ptr %6, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %78, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #7
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %78, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.peri_clk_data, ptr %6, i32 0, i32 6, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = icmp eq i32 %1, %2
  %19 = select i1 %18, i32 0, i32 -22
  br label %78

20:                                               ; preds = %12
  %21 = and i32 %14, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = icmp eq i32 %1, %2
  %25 = select i1 %24, i32 0, i32 -22
  br label %78

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.peri_clk_data, ptr %6, i32 0, i32 4
  %30 = icmp eq i32 %1, 0
  %31 = select i1 %30, i32 1, i32 %1
  %32 = call fastcc i32 @round_rate(ptr noundef %28, ptr noundef %7, ptr noundef %29, i32 noundef %31, i32 noundef %2, ptr noundef nonnull %4)
  %33 = load ptr, ptr %27, align 4
  %34 = getelementptr inbounds %struct.peri_clk_data, ptr %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.peri_clk_data, ptr %6, i32 0, i32 5
  %36 = load i64, ptr %4, align 8
  %37 = load i32, ptr %13, align 8
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !15

40:                                               ; preds = %26
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #7, !srcloc !23
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.peri_clk_data, ptr %6, i32 0, i32 6, i32 0, i32 0, i32 4
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, %36
  br i1 %44, label %78, label %45

45:                                               ; preds = %41
  store i64 %36, ptr %42, align 8
  %46 = getelementptr inbounds %struct.ccu_data, ptr %33, i32 0, i32 1
  %47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #7
  %48 = getelementptr inbounds %struct.ccu_data, ptr %33, i32 0, i32 2
  %49 = load i8, ptr %48, align 4, !range !19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ccu_data, ptr %33, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.__ccu_write_enable, ptr noundef %53) #9
  br label %57

55:                                               ; preds = %45
  store i8 1, ptr %48, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  call void @arm_heavy_mb() #7
  %56 = load ptr, ptr %33, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 10855681) #7, !srcloc !21
  br label %57

57:                                               ; preds = %55, %51
  %58 = call fastcc i32 @__div_commit(ptr noundef %33, ptr noundef %34, ptr noundef %7, ptr noundef %35) #7
  %59 = load i8, ptr %48, align 4, !range !19
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ccu_data, ptr %33, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.__ccu_write_disable, ptr noundef %63) #9
  br label %67

65:                                               ; preds = %57
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  call void @arm_heavy_mb() #7
  %66 = load ptr, ptr %33, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 10855680) #7, !srcloc !21
  store i8 0, ptr %48, align 4
  br label %67

67:                                               ; preds = %65, %61
  call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #7
  %68 = icmp eq i32 %58, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %67
  store i64 %43, ptr %42, align 8
  switch i32 %58, label %78 [
    i32 -6, label %70
    i32 -5, label %74
  ]

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.kona_peri_clk_set_rate, ptr noundef %72) #9
  br label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.kona_clk, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.kona_peri_clk_set_rate, ptr noundef %76) #9
  br label %78

78:                                               ; preds = %74, %70, %69, %67, %41, %23, %17, %9, %3
  %79 = phi i32 [ %25, %23 ], [ %19, %17 ], [ -22, %3 ], [ 0, %9 ], [ -5, %70 ], [ -5, %74 ], [ %58, %69 ], [ 0, %41 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %79
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local zeroext i1 @kona_ccu_init(ptr noundef %0) local_unnamed_addr #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.__ccu_write_enable, ptr noundef %10) #9
  br label %14

12:                                               ; preds = %1
  store i8 1, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 10855681) #7, !srcloc !21
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %262, label %18

18:                                               ; preds = %257, %14
  %19 = phi i32 [ %258, %257 ], [ %16, %14 ]
  %20 = phi i1 [ %259, %257 ], [ true, %14 ]
  %21 = phi i32 [ %260, %257 ], [ 0, %14 ]
  %22 = getelementptr %struct.kona_clk, ptr %2, i32 %21, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %257, label %25

25:                                               ; preds = %18
  %26 = getelementptr %struct.kona_clk, ptr %2, i32 %21, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %252

29:                                               ; preds = %25
  %30 = getelementptr %struct.kona_clk, ptr %2, i32 %21, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.kona_clk, ptr %2, i32 %21, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %31, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %190, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 3, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = shl nuw i32 1, %42
  %44 = load ptr, ptr %23, align 4
  %45 = getelementptr i8, ptr %44, i32 %38
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %47 = and i32 %46, %43
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %55

49:                                               ; preds = %55
  %50 = load ptr, ptr %23, align 4
  %51 = getelementptr i8, ptr %50, i32 %38
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %53 = and i32 %52, %43
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49, %40
  %56 = phi i32 [ %58, %49 ], [ 0, %40 ]
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #7
  %58 = add nuw nsw i32 %56, 1
  %59 = icmp eq i32 %58, 2000
  br i1 %59, label %83, label %49

60:                                               ; preds = %49, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %61 = load ptr, ptr %23, align 4
  %62 = getelementptr i8, ptr %61, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %43) #7, !srcloc !21
  %63 = load ptr, ptr %23, align 4
  %64 = getelementptr i8, ptr %63, i32 %38
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %66 = and i32 %65, %43
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %93, label %74

68:                                               ; preds = %74
  %69 = load ptr, ptr %23, align 4
  %70 = getelementptr i8, ptr %69, i32 %38
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %72 = and i32 %71, %43
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68, %60
  %75 = phi i32 [ %77, %68 ], [ 0, %60 ]
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #7
  %77 = add nuw nsw i32 %75, 1
  %78 = icmp eq i32 %77, 2000
  br i1 %78, label %83, label %68

79:                                               ; preds = %68
  %80 = icmp ult i32 %75, 1999
  br i1 %80, label %93, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 6
  br label %88

83:                                               ; preds = %74, %55
  %84 = phi ptr [ @.str.24, %74 ], [ @.str.23, %55 ]
  %85 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__ccu_wait_bit, ptr noundef %86, i32 noundef %38, i32 noundef %42, ptr noundef nonnull @.str.6) #9
  br label %88

88:                                               ; preds = %83, %81
  %89 = phi ptr [ %85, %83 ], [ %82, %81 ]
  %90 = phi ptr [ %84, %83 ], [ @.str.24, %81 ]
  %91 = load ptr, ptr %89, align 4
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %90, ptr noundef nonnull @__func__.__ccu_policy_engine_stop, ptr noundef %91) #9
  br label %185

93:                                               ; preds = %79, %60, %36
  %94 = load i32, ptr %31, align 4
  %95 = getelementptr inbounds %struct.bcm_clk_policy, ptr %31, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = shl nuw i32 1, %96
  %98 = load ptr, ptr %23, align 4
  %99 = getelementptr i8, ptr %98, i32 %94
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %101 = or i32 %100, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %102 = load ptr, ptr %23, align 4
  %103 = getelementptr i8, ptr %102, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #7, !srcloc !21
  %104 = add i32 %94, 4
  %105 = load ptr, ptr %23, align 4
  %106 = getelementptr i8, ptr %105, i32 %104
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %108 = or i32 %107, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %109 = load ptr, ptr %23, align 4
  %110 = getelementptr i8, ptr %109, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #7, !srcloc !21
  %111 = add i32 %94, 8
  %112 = load ptr, ptr %23, align 4
  %113 = getelementptr i8, ptr %112, i32 %111
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %115 = or i32 %114, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %116 = load ptr, ptr %23, align 4
  %117 = getelementptr i8, ptr %116, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #7, !srcloc !21
  %118 = add i32 %94, 12
  %119 = load ptr, ptr %23, align 4
  %120 = getelementptr i8, ptr %119, i32 %118
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %122 = or i32 %121, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %123 = load ptr, ptr %23, align 4
  %124 = getelementptr i8, ptr %123, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #7, !srcloc !21
  %125 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 3, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %190, label %128

128:                                              ; preds = %93
  %129 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 3, i32 1, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = shl nuw i32 1, %130
  %132 = load ptr, ptr %23, align 4
  %133 = getelementptr i8, ptr %132, i32 %126
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %135 = and i32 %134, %131
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %143

137:                                              ; preds = %143
  %138 = load ptr, ptr %23, align 4
  %139 = getelementptr i8, ptr %138, i32 %126
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %141 = and i32 %140, %131
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %137, %128
  %144 = phi i32 [ %146, %137 ], [ 0, %128 ]
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748) #7
  %146 = add nuw nsw i32 %144, 1
  %147 = icmp eq i32 %146, 2000
  br i1 %147, label %175, label %137

148:                                              ; preds = %137, %128
  %149 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 3, i32 1, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = shl nuw i32 1, %150
  %152 = or i32 %151, %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %153 = load ptr, ptr %23, align 4
  %154 = getelementptr i8, ptr %153, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #7, !srcloc !21
  %155 = load ptr, ptr %23, align 4
  %156 = getelementptr i8, ptr %155, i32 %126
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %158 = and i32 %157, %131
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %190, label %166

160:                                              ; preds = %166
  %161 = load ptr, ptr %23, align 4
  %162 = getelementptr i8, ptr %161, i32 %126
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %164 = and i32 %163, %131
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %160, %148
  %167 = phi i32 [ %169, %160 ], [ 0, %148 ]
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %168(i32 noundef 214748) #7
  %169 = add nuw nsw i32 %167, 1
  %170 = icmp eq i32 %169, 2000
  br i1 %170, label %175, label %160

171:                                              ; preds = %160
  %172 = icmp ult i32 %167, 1999
  br i1 %172, label %190, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 6
  br label %180

175:                                              ; preds = %166, %143
  %176 = phi ptr [ @.str.26, %166 ], [ @.str.25, %143 ]
  %177 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 6
  %178 = load ptr, ptr %177, align 4
  %179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__ccu_wait_bit, ptr noundef %178, i32 noundef %126, i32 noundef %130, ptr noundef nonnull @.str.6) #9
  br label %180

180:                                              ; preds = %175, %173
  %181 = phi ptr [ %177, %175 ], [ %174, %173 ]
  %182 = phi ptr [ %176, %175 ], [ @.str.26, %173 ]
  %183 = load ptr, ptr %181, align 4
  %184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %182, ptr noundef nonnull @__func__.__ccu_policy_engine_start, ptr noundef %183) #9
  br label %185

185:                                              ; preds = %180, %88
  %186 = phi ptr [ @.str.22, %180 ], [ @.str.21, %88 ]
  %187 = getelementptr inbounds %struct.ccu_data, ptr %23, i32 0, i32 6
  %188 = load ptr, ptr %187, align 4
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %186, ptr noundef nonnull @__func__.policy_init, ptr noundef %188) #9
  br label %249

190:                                              ; preds = %171, %148, %93, %29
  %191 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 1
  %192 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 1, i32 4
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %190
  %197 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %23, ptr noundef %191) #7
  br i1 %197, label %198, label %249

198:                                              ; preds = %196, %190
  %199 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %216, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 2, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = shl nuw i32 1, %204
  %206 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 2, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = shl nuw i32 1, %207
  %209 = or i32 %208, %205
  %210 = load ptr, ptr %23, align 4
  %211 = getelementptr i8, ptr %210, i32 %200
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %213 = or i32 %209, %212
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %214 = load ptr, ptr %23, align 4
  %215 = getelementptr i8, ptr %214, i32 %200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %213) #7, !srcloc !21
  br label %216

216:                                              ; preds = %202, %198
  %217 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 5
  %218 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 6, i32 1
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 3
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 6
  %224 = tail call fastcc i32 @__div_commit(ptr noundef %23, ptr noundef %191, ptr noundef %223, ptr noundef %217) #7
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %249

226:                                              ; preds = %222, %216
  %227 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 3
  %228 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 3, i32 2
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, ptr %217, ptr %227
  %233 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 4, i32 1
  %234 = load i32, ptr %233, align 8
  %235 = and i32 %234, 3
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %241

237:                                              ; preds = %226
  %238 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 4
  %239 = tail call fastcc i32 @__div_commit(ptr noundef %23, ptr noundef %191, ptr noundef %238, ptr noundef %232) #7
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237, %226
  %242 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 7, i32 2
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.peri_clk_data, ptr %31, i32 0, i32 7
  %247 = tail call fastcc i32 @__sel_commit(ptr noundef %23, ptr noundef %191, ptr noundef %246, ptr noundef %232) #7
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %245, %237, %222, %196, %185
  %250 = phi ptr [ @.str.15, %185 ], [ @.str.16, %196 ], [ @.str.18, %222 ], [ @.str.19, %237 ], [ @.str.20, %245 ]
  %251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %250, ptr noundef nonnull @__func__.__peri_clk_init, ptr noundef %33) #9
  br label %253

252:                                              ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1250, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

253:                                              ; preds = %249, %245, %241
  %254 = phi i1 [ true, %245 ], [ true, %241 ], [ false, %249 ]
  %255 = and i1 %20, %254
  %256 = load i32, ptr %15, align 4
  br label %257

257:                                              ; preds = %253, %18
  %258 = phi i32 [ %256, %253 ], [ %19, %18 ]
  %259 = phi i1 [ %255, %253 ], [ %20, %18 ]
  %260 = add nuw i32 %21, 1
  %261 = icmp ult i32 %260, %258
  br i1 %261, label %18, label %262

262:                                              ; preds = %257, %14
  %263 = phi i1 [ true, %14 ], [ %259, %257 ]
  %264 = load i8, ptr %5, align 4, !range !19
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %268 = load ptr, ptr %267, align 4
  %269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.__ccu_write_disable, ptr noundef %268) #9
  br label %272

270:                                              ; preds = %262
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %271 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 10855680) #7, !srcloc !21
  store i8 0, ptr %5, align 4
  br label %272

272:                                              ; preds = %270, %266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  ret i1 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_gate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bcm_clk_gate, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 17
  %8 = icmp eq i32 %7, 17
  br i1 %8, label %9, label %59

9:                                                ; preds = %4
  %10 = and i32 %6, 8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %3, i1 true, i1 %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 1
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %16 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %16, align 4, !range !19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.__ccu_write_enable, ptr noundef %21) #9
  br label %25

23:                                               ; preds = %13
  store i8 1, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 10855681) #7, !srcloc !21
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, ptr %5, align 4
  %27 = and i32 %26, 17
  %28 = icmp eq i32 %27, 17
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = and i32 %26, 8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %3, i1 true, i1 %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__clk_gate) #9
  br label %45

35:                                               ; preds = %29
  %36 = and i32 %26, 32
  %37 = icmp eq i32 %36, 0
  %38 = xor i1 %37, %3
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = xor i32 %26, 32
  store i32 %40, ptr %5, align 4
  %41 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %0, ptr noundef %2) #7
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %5, align 4
  %44 = xor i32 %43, 32
  store i32 %44, ptr %5, align 4
  br label %45

45:                                               ; preds = %42, %39, %35, %33, %25
  %46 = phi i1 [ true, %33 ], [ true, %25 ], [ true, %35 ], [ false, %42 ], [ true, %39 ]
  %47 = load i8, ptr %16, align 4, !range !19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.__ccu_write_disable, ptr noundef %51) #9
  br label %55

53:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %54 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 10855680) #7, !srcloc !21
  store i8 0, ptr %16, align 4
  br label %55

55:                                               ; preds = %53, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #7
  br i1 %46, label %59, label %56

56:                                               ; preds = %55
  %57 = select i1 %3, ptr @.str.1, ptr @.str.2
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.clk_gate, ptr noundef nonnull %57, ptr noundef %1) #9
  br label %59

59:                                               ; preds = %56, %55, %9, %4
  %60 = phi i32 [ -5, %56 ], [ 0, %4 ], [ 0, %9 ], [ 0, %55 ]
  ret i32 %60
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__gate_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #7, !srcloc !25
  unreachable

8:                                                ; preds = %2
  %9 = and i32 %4, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %97, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = shl nuw i32 1, %21
  %23 = and i32 %16, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = or i32 %22, %15
  %27 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl nuw i32 1, %28
  br label %42

30:                                               ; preds = %19
  %31 = xor i32 %22, -1
  %32 = and i32 %15, %31
  %33 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw i32 1, %34
  br label %51

36:                                               ; preds = %11
  %37 = and i32 %16, 16
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = shl nuw i32 1, %40
  br i1 %38, label %51, label %42

42:                                               ; preds = %36, %25
  %43 = phi i32 [ %29, %25 ], [ %41, %36 ]
  %44 = phi i32 [ %26, %25 ], [ %15, %36 ]
  %45 = and i32 %16, 32
  %46 = icmp ne i32 %45, 0
  %47 = and i32 %16, 40
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = or i32 %43, %44
  br label %57

51:                                               ; preds = %42, %36, %30
  %52 = phi i32 [ %43, %42 ], [ %41, %36 ], [ %35, %30 ]
  %53 = phi i32 [ %44, %42 ], [ %15, %36 ], [ %32, %30 ]
  %54 = phi i1 [ %46, %42 ], [ false, %36 ], [ false, %30 ]
  %55 = xor i32 %52, -1
  %56 = and i32 %53, %55
  br label %57

57:                                               ; preds = %51, %49
  %58 = phi i32 [ %56, %51 ], [ %50, %49 ]
  %59 = phi i1 [ %54, %51 ], [ true, %49 ]
  %60 = load i32, ptr %1, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %58) #7, !srcloc !21
  %63 = load i32, ptr %3, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %57
  %67 = load i32, ptr %1, align 4
  %68 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = shl nuw i32 1, %69
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr i8, ptr %71, i32 %67
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %74 = and i32 %73, %70
  %75 = icmp eq i32 %74, 0
  %76 = xor i1 %59, %75
  br i1 %76, label %97, label %84

77:                                               ; preds = %84
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr i8, ptr %78, i32 %67
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %81 = and i32 %80, %70
  %82 = icmp eq i32 %81, 0
  %83 = xor i1 %59, %82
  br i1 %83, label %95, label %84

84:                                               ; preds = %77, %66
  %85 = phi i32 [ %87, %77 ], [ 0, %66 ]
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748) #7
  %87 = add nuw nsw i32 %85, 1
  %88 = icmp eq i32 %87, 2000
  br i1 %88, label %89, label %77

89:                                               ; preds = %84
  %90 = icmp ult i32 %85, 1999
  %91 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = select i1 %59, ptr @.str.5, ptr @.str.6
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__ccu_wait_bit, ptr noundef %92, i32 noundef %67, i32 noundef %69, ptr noundef nonnull %93) #9
  br label %97

95:                                               ; preds = %77
  %96 = icmp ult i32 %85, 1999
  br label %97

97:                                               ; preds = %95, %89, %66, %57, %8
  %98 = phi i1 [ true, %8 ], [ true, %57 ], [ %90, %89 ], [ true, %66 ], [ %96, %95 ]
  ret i1 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @round_rate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.bcm_clk_div, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 759, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

12:                                               ; preds = %6
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #7, !srcloc !27
  unreachable

15:                                               ; preds = %12
  %16 = icmp slt i32 %4, 0
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 761, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bcm_clk_div, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %83, label %23

23:                                               ; preds = %18
  %24 = and i32 %20, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = zext i32 %4 to i64
  %28 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 %27, %30
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi i32 [ %32, %26 ], [ %4, %23 ]
  %35 = and i32 %8, 2
  %36 = icmp eq i32 %35, 0
  %37 = zext i32 %34 to i64
  br i1 %36, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 %37, %41
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i64 [ %42, %38 ], [ %37, %33 ]
  br i1 %25, label %48, label %45

45:                                               ; preds = %43
  %46 = load i32, ptr %2, align 8
  %47 = zext i32 %46 to i64
  br label %70

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 1
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #7
  %51 = load i32, ptr %2, align 8
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #7
  %55 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = shl i32 %60, %56
  %62 = and i32 %61, %54
  %63 = lshr i32 %62, %56
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = zext i32 %66 to i64
  %68 = shl nuw i64 1, %67
  %69 = add nuw i64 %68, %64
  br label %70

70:                                               ; preds = %48, %45
  %71 = phi i64 [ %47, %45 ], [ %69, %48 ]
  %72 = lshr i64 %71, 1
  %73 = add i64 %72, %44
  %74 = trunc i64 %71 to i32
  %75 = icmp ult i64 %73, 4294967296
  br i1 %75, label %76, label %80, !prof !15

76:                                               ; preds = %70
  %77 = trunc i64 %73 to i32
  %78 = udiv i32 %77, %74
  %79 = zext i32 %78 to i64
  br label %92

80:                                               ; preds = %70
  %81 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %74, i64 %73) #8, !srcloc !16
  %82 = extractvalue { i64, i64 } %81, 1
  br label %92

83:                                               ; preds = %18
  %84 = and i32 %8, 2
  %85 = icmp eq i32 %84, 0
  %86 = zext i32 %4 to i64
  br i1 %85, label %87, label %92

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = zext i32 %89 to i64
  %91 = shl i64 %86, %90
  br label %92

92:                                               ; preds = %87, %83, %80, %76
  %93 = phi i64 [ %79, %76 ], [ %82, %80 ], [ %91, %87 ], [ %86, %83 ]
  %94 = load i32, ptr %7, align 8
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %92
  %98 = lshr i32 %3, 1
  %99 = zext i32 %98 to i64
  %100 = add i64 %93, %99
  %101 = icmp ult i64 %100, 4294967296
  br i1 %101, label %102, label %106, !prof !15

102:                                              ; preds = %97
  %103 = trunc i64 %100 to i32
  %104 = udiv i32 %103, %3
  %105 = zext i32 %104 to i64
  br label %109

106:                                              ; preds = %97
  %107 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %100) #8, !srcloc !16
  %108 = extractvalue { i64, i64 } %107, 1
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi i64 [ %105, %102 ], [ %108, %106 ]
  %111 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = shl nsw i32 -1, %112
  %114 = xor i32 %113, -1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  %119 = shl nuw i64 1, %118
  %120 = add nuw i64 %119, %115
  %121 = icmp ugt i64 %110, %120
  %122 = tail call i64 @llvm.umax.i64(i64 %110, i64 %119)
  %123 = select i1 %121, i64 %120, i64 %122
  br label %127

124:                                              ; preds = %92
  %125 = load i32, ptr %1, align 8
  %126 = zext i32 %125 to i64
  br label %127

127:                                              ; preds = %124, %109
  %128 = phi i64 [ %126, %124 ], [ %123, %109 ]
  %129 = lshr i64 %128, 1
  %130 = add i64 %129, %93
  %131 = trunc i64 %128 to i32
  %132 = icmp ult i64 %130, 4294967296
  br i1 %132, label %133, label %136, !prof !15

133:                                              ; preds = %127
  %134 = trunc i64 %130 to i32
  %135 = udiv i32 %134, %131
  br label %140

136:                                              ; preds = %127
  %137 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %131, i64 %130) #8, !srcloc !16
  %138 = extractvalue { i64, i64 } %137, 1
  %139 = trunc i64 %138 to i32
  br label %140

140:                                              ; preds = %136, %133
  %141 = phi i32 [ %135, %133 ], [ %139, %136 ]
  %142 = icmp eq ptr %5, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  store i64 %128, ptr %5, align 8
  br label %144

144:                                              ; preds = %143, %140
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sel_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 882, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, -1
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = load i32, ptr %2, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %19 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %5, align 4
  %22 = shl nsw i32 -1, %21
  %23 = xor i32 %22, -1
  %24 = shl i32 %23, %20
  %25 = and i32 %24, %18
  %26 = lshr i32 %25, %20
  %27 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 255
  br i1 %29, label %37, label %30, !prof !8

30:                                               ; preds = %14
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %155, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = and i32 %26, 255
  %36 = trunc i32 %28 to i8
  br label %38

37:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 825, 0\0A.popsection", ""() #7, !srcloc !22
  unreachable

38:                                               ; preds = %44, %32
  %39 = phi i32 [ 0, %32 ], [ %46, %44 ]
  %40 = phi i8 [ 0, %32 ], [ %45, %44 ]
  %41 = getelementptr i32, ptr %34, i32 %39
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = add nuw i8 %40, 1
  %46 = zext i8 %45 to i32
  %47 = icmp ult i8 %45, %36
  br i1 %47, label %38, label %155

48:                                               ; preds = %38
  store i8 %40, ptr %10, align 4
  br label %155

49:                                               ; preds = %9
  %50 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, %12
  br i1 %52, label %54, label %53, !prof !15

53:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 902, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i32, ptr %56, i32 %12
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = shl nuw i32 1, %65
  %67 = load i32, ptr %1, align 4
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %71 = and i32 %70, %66
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i32, ptr %59, align 4
  %75 = and i32 %74, 49
  %76 = icmp eq i32 %75, 17
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = xor i32 %74, 32
  store i32 %78, ptr %59, align 4
  %79 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %0, ptr noundef %1) #7
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %59, align 4
  %82 = xor i32 %81, 32
  store i32 %82, ptr %59, align 4
  br label %155

83:                                               ; preds = %77, %73, %63, %54
  %84 = phi i1 [ true, %63 ], [ true, %54 ], [ false, %73 ], [ false, %77 ]
  %85 = load i32, ptr %2, align 4
  %86 = load ptr, ptr %0, align 4
  %87 = getelementptr i8, ptr %86, i32 %85
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %89 = getelementptr inbounds %struct.bcm_clk_sel, ptr %2, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %5, align 4
  %92 = shl nsw i32 -1, %91
  %93 = xor i32 %92, -1
  %94 = shl i32 %93, %90
  %95 = xor i32 %94, -1
  %96 = and i32 %88, %95
  %97 = shl i32 %58, %90
  %98 = or i32 %96, %97
  %99 = load i32, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %100 = load ptr, ptr %0, align 4
  %101 = getelementptr i8, ptr %100, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %98) #7, !srcloc !21
  %102 = load i32, ptr %3, align 4
  %103 = getelementptr inbounds %struct.bcm_clk_trig, ptr %3, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = shl nuw i32 1, %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %106 = load ptr, ptr %0, align 4
  %107 = getelementptr i8, ptr %106, i32 %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #7, !srcloc !21
  %108 = load i32, ptr %3, align 4
  %109 = load i32, ptr %103, align 4
  %110 = shl nuw i32 1, %109
  %111 = load ptr, ptr %0, align 4
  %112 = getelementptr i8, ptr %111, i32 %108
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %114 = and i32 %113, %110
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %134, label %122

116:                                              ; preds = %122
  %117 = load ptr, ptr %0, align 4
  %118 = getelementptr i8, ptr %117, i32 %108
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %120 = and i32 %119, %110
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %116, %83
  %123 = phi i32 [ %125, %116 ], [ 0, %83 ]
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748) #7
  %125 = add nuw nsw i32 %123, 1
  %126 = icmp eq i32 %125, 2000
  br i1 %126, label %127, label %116

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__ccu_wait_bit, ptr noundef %129, i32 noundef %108, i32 noundef %109, ptr noundef nonnull @.str.6) #9
  br label %133

131:                                              ; preds = %116
  %132 = icmp ult i32 %123, 1999
  br i1 %132, label %134, label %133

133:                                              ; preds = %131, %127
  br label %134

134:                                              ; preds = %133, %131, %83
  %135 = phi i32 [ -5, %133 ], [ -6, %83 ], [ -6, %131 ]
  %136 = phi i32 [ -5, %133 ], [ 0, %83 ], [ 0, %131 ]
  br i1 %84, label %155, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %59, align 4
  %139 = and i32 %138, 17
  %140 = icmp eq i32 %139, 17
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = and i32 %138, 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__clk_gate) #9
  br label %155

146:                                              ; preds = %141
  %147 = and i32 %138, 32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %146
  %150 = xor i32 %138, 32
  store i32 %150, ptr %59, align 4
  %151 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %0, ptr noundef %1) #7
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, ptr %59, align 4
  %154 = xor i32 %153, 32
  store i32 %154, ptr %59, align 4
  br label %155

155:                                              ; preds = %152, %149, %146, %144, %137, %134, %80, %48, %44, %30
  %156 = phi i32 [ 0, %48 ], [ -6, %80 ], [ %136, %134 ], [ %135, %152 ], [ %136, %144 ], [ %136, %137 ], [ %136, %146 ], [ %136, %149 ], [ -22, %30 ], [ -22, %44 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__div_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bcm_clk_div, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !15

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 599, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %19 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = shl i32 %24, %20
  %26 = and i32 %25, %18
  %27 = lshr i32 %26, %20
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  %32 = shl nuw i64 1, %31
  %33 = add nuw i64 %32, %28
  store i64 %33, ptr %11, align 8
  br label %151

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %12, %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #7, !srcloc !32
  unreachable

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = shl nsw i32 -1, %43
  %45 = xor i32 %44, -1
  %46 = zext i32 %45 to i64
  %47 = shl nuw i64 1, %37
  %48 = add nuw i64 %47, %46
  %49 = icmp ult i64 %48, %12
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

51:                                               ; preds = %41
  %52 = shl nsw i64 -1, %37
  %53 = add i64 %52, %12
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.bcm_clk_gate, ptr %1, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = shl nuw i32 1, %61
  %63 = load i32, ptr %1, align 4
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr i8, ptr %64, i32 %63
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %67 = and i32 %66, %62
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %59
  %70 = load i32, ptr %55, align 4
  %71 = and i32 %70, 49
  %72 = icmp eq i32 %71, 17
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = xor i32 %70, 32
  store i32 %74, ptr %55, align 4
  %75 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %0, ptr noundef %1) #7
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %55, align 4
  %78 = xor i32 %77, 32
  store i32 %78, ptr %55, align 4
  br label %151

79:                                               ; preds = %73, %69, %59, %51
  %80 = phi i1 [ true, %59 ], [ true, %51 ], [ false, %69 ], [ false, %73 ]
  %81 = load i32, ptr %2, align 8
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr i8, ptr %82, i32 %81
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %85 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %42, align 8
  %88 = shl nsw i32 -1, %87
  %89 = xor i32 %88, -1
  %90 = shl i32 %89, %86
  %91 = xor i32 %90, -1
  %92 = and i32 %84, %91
  %93 = shl i32 %54, %86
  %94 = or i32 %92, %93
  %95 = load i32, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %96 = load ptr, ptr %0, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %94) #7, !srcloc !21
  %98 = load i32, ptr %3, align 4
  %99 = getelementptr inbounds %struct.bcm_clk_trig, ptr %3, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = shl nuw i32 1, %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr i8, ptr %102, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #7, !srcloc !21
  %104 = load i32, ptr %3, align 4
  %105 = load i32, ptr %99, align 4
  %106 = shl nuw i32 1, %105
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr i8, ptr %107, i32 %104
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %110 = and i32 %109, %106
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %130, label %118

112:                                              ; preds = %118
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr i8, ptr %113, i32 %104
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %116 = and i32 %115, %106
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %112, %79
  %119 = phi i32 [ %121, %112 ], [ 0, %79 ]
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748) #7
  %121 = add nuw nsw i32 %119, 1
  %122 = icmp eq i32 %121, 2000
  br i1 %122, label %123, label %112

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__ccu_wait_bit, ptr noundef %125, i32 noundef %104, i32 noundef %105, ptr noundef nonnull @.str.6) #9
  br label %129

127:                                              ; preds = %112
  %128 = icmp ult i32 %119, 1999
  br i1 %128, label %130, label %129

129:                                              ; preds = %127, %123
  br label %130

130:                                              ; preds = %129, %127, %79
  %131 = phi i32 [ -5, %129 ], [ -6, %79 ], [ -6, %127 ]
  %132 = phi i32 [ -5, %129 ], [ 0, %79 ], [ 0, %127 ]
  br i1 %80, label %151, label %133

133:                                              ; preds = %130
  %134 = load i32, ptr %55, align 4
  %135 = and i32 %134, 17
  %136 = icmp eq i32 %135, 17
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = and i32 %134, 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__clk_gate) #9
  br label %151

142:                                              ; preds = %137
  %143 = and i32 %134, 32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = xor i32 %134, 32
  store i32 %146, ptr %55, align 4
  %147 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %0, ptr noundef %1) #7
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, ptr %55, align 4
  %150 = xor i32 %149, 32
  store i32 %150, ptr %55, align 4
  br label %151

151:                                              ; preds = %148, %145, %142, %140, %133, %130, %76, %14
  %152 = phi i32 [ 0, %14 ], [ %132, %130 ], [ -6, %76 ], [ %131, %148 ], [ %132, %140 ], [ %132, %133 ], [ %132, %142 ], [ %132, %145 ]
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151502163, i64 2151502653, i64 2151502200, i64 2151502256, i64 2151502290, i64 2151502314, i64 2151502355, i64 2151502376, i64 2151502404, i64 2151502438}
!10 = !{i64 2151503232, i64 2151503722, i64 2151503269, i64 2151503325, i64 2151503359, i64 2151503383, i64 2151503424, i64 2151503445, i64 2151503473, i64 2151503507}
!11 = !{i64 889873, i64 889900, i64 889922, i64 889950}
!12 = !{i64 890281, i64 890308, i64 890341, i64 890362, i64 890389, i64 890415}
!13 = !{i64 3952181}
!14 = !{i64 2151512899}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148375417, i64 2148375697, i64 2148376031, i64 2148376365}
!17 = !{i64 2151581884, i64 2151582376, i64 2151581921, i64 2151581977, i64 2151582011, i64 2151582035, i64 2151582076, i64 2151582097, i64 2151582125, i64 2151582159}
!18 = !{i64 2151589766, i64 2151590258, i64 2151589803, i64 2151589859, i64 2151589893, i64 2151589917, i64 2151589958, i64 2151589979, i64 2151590007, i64 2151590041}
!19 = !{i8 0, i8 2}
!20 = !{i64 2151513262}
!21 = !{i64 3951763}
!22 = !{i64 2151564073, i64 2151564564, i64 2151564110, i64 2151564166, i64 2151564200, i64 2151564224, i64 2151564265, i64 2151564286, i64 2151564314, i64 2151564348}
!23 = !{i64 2151532576, i64 2151533067, i64 2151532613, i64 2151532669, i64 2151532703, i64 2151532727, i64 2151532768, i64 2151532789, i64 2151532817, i64 2151532851}
!24 = !{i64 2151600325, i64 2151600817, i64 2151600362, i64 2151600418, i64 2151600452, i64 2151600476, i64 2151600517, i64 2151600538, i64 2151600566, i64 2151600600}
!25 = !{i64 2151521194, i64 2151521685, i64 2151521231, i64 2151521287, i64 2151521321, i64 2151521345, i64 2151521386, i64 2151521407, i64 2151521435, i64 2151521469}
!26 = !{i64 2151544721, i64 2151545212, i64 2151544758, i64 2151544814, i64 2151544848, i64 2151544872, i64 2151544913, i64 2151544934, i64 2151544962, i64 2151544996}
!27 = !{i64 2151545744, i64 2151546235, i64 2151545781, i64 2151545837, i64 2151545871, i64 2151545895, i64 2151545936, i64 2151545957, i64 2151545985, i64 2151546019}
!28 = !{i64 2151546855, i64 2151547346, i64 2151546892, i64 2151546948, i64 2151546982, i64 2151547006, i64 2151547047, i64 2151547068, i64 2151547096, i64 2151547130}
!29 = !{i64 2151565879, i64 2151566370, i64 2151565916, i64 2151565972, i64 2151566006, i64 2151566030, i64 2151566071, i64 2151566092, i64 2151566120, i64 2151566154}
!30 = !{i64 2151567009, i64 2151567500, i64 2151567046, i64 2151567102, i64 2151567136, i64 2151567160, i64 2151567201, i64 2151567222, i64 2151567250, i64 2151567284}
!31 = !{i64 2151530957, i64 2151531448, i64 2151530994, i64 2151531050, i64 2151531084, i64 2151531108, i64 2151531149, i64 2151531170, i64 2151531198, i64 2151531232}
!32 = !{i64 2151510252, i64 2151510743, i64 2151510289, i64 2151510345, i64 2151510379, i64 2151510403, i64 2151510444, i64 2151510465, i64 2151510493, i64 2151510527}
!33 = !{i64 2151511329, i64 2151511820, i64 2151511366, i64 2151511422, i64 2151511456, i64 2151511480, i64 2151511521, i64 2151511542, i64 2151511570, i64 2151511604}
