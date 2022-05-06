; ModuleID = '/llk/IR/drivers/clk/bcm/clk-kona-setup.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-kona-setup.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ccu_data = type { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [0 x %struct.kona_clk] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ccu_policy = type { %struct.bcm_lvm_en, %struct.bcm_policy_ctl }
%struct.bcm_lvm_en = type { i32, i32 }
%struct.bcm_policy_ctl = type { i32, i32, i32, i32 }
%struct.kona_clk = type { %struct.clk_hw, %struct.clk_init_data, ptr, i32, %union.anon.5 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.anon.5 = type { ptr }
%struct.peri_clk_data = type { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [0 x ptr] }
%struct.bcm_clk_policy = type { i32, i32 }
%struct.bcm_clk_gate = type { i32, i32, i32, i32, i32 }
%struct.bcm_clk_hyst = type { i32, i32, i32 }
%struct.bcm_clk_trig = type { i32, i32, i32 }
%struct.bcm_clk_div = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, i32, i64 }
%struct.bcm_clk_sel = type { i32, i32, i32, i32, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [46 x i8] c"\013%s: no valid CCU registers found for %pOFn\0A\00", align 1
@__func__.kona_dt_ccu_setup = private unnamed_addr constant [18 x i8] c"kona_dt_ccu_setup\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%s: ccu data not valid for %pOFn\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\013%s: unable to map CCU registers for %pOFn\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013%s: error adding ccu %pOFn as provider (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\013Broadcom %pOFn initialization had errors\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\013Broadcom %pOFn setup aborted\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\013%s: bad policy enable offset for %s (%u > %u)\0A\00", align 1
@__func__.ccu_data_offsets_valid = private unnamed_addr constant [23 x i8] c"ccu_data_offsets_valid\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013%s: bad policy control offset for %s (%u > %u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"policy enable\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"policy control GO\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"policy control ATL\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"policy control AC\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\013%s: bad %s bit for %s (%u > %u)\0A\00", align 1
@__func__.bit_posn_valid = private unnamed_addr constant [15 x i8] c"bit_posn_valid\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"\013%s: clock type %d invalid for %s\0A\00", align 1
@__func__.kona_clk_setup = private unnamed_addr constant [15 x i8] c"kona_clk_setup\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\013%s: clock data invalid for %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"\013%s: error registering clock %s (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\013%s: error processing parent clocks for %s (%d)\0A\00", align 1
@__func__.clk_sel_setup = private unnamed_addr constant [14 x i8] c"clk_sel_setup\00", align 1
@parent_process.parent_names = internal unnamed_addr global ptr null, align 4
@parent_process.parent_sel = internal unnamed_addr global ptr null, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"\013%s: too many parents (%u > %u)\0A\00", align 1
@__func__.parent_process = private unnamed_addr constant [15 x i8] c"parent_process\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"\013%s: unrecognized clock type (%d)\0A\00", align 1
@__func__.kona_clk_valid = private unnamed_addr constant [15 x i8] c"kona_clk_valid\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"\013%s: multiple parents but no selector for %s\0A\00", align 1
@__func__.peri_clk_data_valid = private unnamed_addr constant [20 x i8] c"peri_clk_data_valid\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"divider\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"pre-divider\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"\013%s: pre-divider but no divider for %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"\014%s: ignoring trigger for %s (not needed)\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"\013%s: pre-trigger but no trigger for %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"\013%s: required trigger missing for %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"\013%s: bad policy offset for %s (%u > %u)\0A\00", align 1
@__func__.peri_clk_data_offsets_valid = private unnamed_addr constant [28 x i8] c"peri_clk_data_offsets_valid\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"\013%s: bad gate offset for %s (%u > %u)\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"\013%s: bad hysteresis offset for %s (%u > %u)\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"\013%s: hysteresis but no gate for %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"\013%s: bad divider offset for %s (%u > %u)\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"\013%s: bad pre-divider offset for %s (%u > %u)\0A\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"\013%s: bad selector offset for %s (%u > %u)\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"\013%s: bad trigger offset for %s (%u > %u)\0A\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"\013%s: bad pre-trigger offset for %s (%u > %u)\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"gate status\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"gate enable\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"gate hw/sw select\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"hysteresis enable\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"hysteresis value\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"\013%s: bad selector for %s (%u needs > %u bits)\0A\00", align 1
@__func__.sel_valid = private unnamed_addr constant [10 x i8] c"sel_valid\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"\014%s: ignoring selector for %s (no parents)\0A\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"\013%s: bad %s field width 0 for %s\0A\00", align 1
@__func__.bitfield_valid = private unnamed_addr constant [15 x i8] c"bitfield_valid\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"\013%s: bad %s for %s (%u + %u > %u)\0A\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"\013%s: bad %s fixed value 0 for %s\0A\00", align 1
@__func__.div_valid = private unnamed_addr constant [10 x i8] c"div_valid\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"\014%s: bad %s fraction width for %s (%u > %u)\0A\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"\013%s: invalid index %u\0A\00", align 1
@__func__.of_clk_kona_onecell_get = private unnamed_addr constant [24 x i8] c"of_clk_kona_onecell_get\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @kona_dt_ccu_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %4 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.kona_dt_ccu_setup, ptr noundef %1) #9
  br label %490

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = add i32 %10, 1
  %13 = sub i32 %12, %11
  %14 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 7
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 3
  %16 = add i32 %13, -4
  %17 = and i32 %16, -4
  %18 = load i32, ptr %15, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %8
  %21 = icmp ugt i32 %18, %17
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ccu_data_offsets_valid, ptr noundef %24, i32 noundef %18, i32 noundef %17) #9
  br label %58

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 3, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %17
  %30 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  br i1 %29, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ccu_data_offsets_valid, ptr noundef %31, i32 noundef %28, i32 noundef %17) #9
  br label %58

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 3, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 31
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.9, ptr noundef %31, i32 noundef %36, i32 noundef 31) #9
  br label %58

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 3, i32 1, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, 31
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.10, ptr noundef %31, i32 noundef %42, i32 noundef 31) #9
  br label %58

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 3, i32 1, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 31
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.11, ptr noundef %31, i32 noundef %48, i32 noundef 31) #9
  br label %58

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 3, i32 1, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, 31
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.12, ptr noundef %31, i32 noundef %54, i32 noundef 31) #9
  br label %58

58:                                               ; preds = %56, %50, %44, %38, %32, %22
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.kona_dt_ccu_setup, ptr noundef %1) #9
  br label %490

60:                                               ; preds = %52, %8
  %61 = call ptr @ioremap(i32 noundef %11, i32 noundef %13) #8
  store ptr %61, ptr %0, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.kona_dt_ccu_setup, ptr noundef %1) #9
  br label %490

65:                                               ; preds = %60
  %66 = call ptr @of_node_get(ptr noundef %1) #8
  %67 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 4
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %483, label %71

71:                                               ; preds = %479, %65
  %72 = phi i32 [ %480, %479 ], [ 0, %65 ]
  %73 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %479, label %76

76:                                               ; preds = %71
  %77 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72
  %78 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72, i32 1
  %79 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %157

82:                                               ; preds = %76
  %83 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72, i32 1, i32 6
  store i32 8, ptr %85, align 4
  %86 = getelementptr inbounds %struct.peri_clk_data, ptr %84, i32 0, i32 8
  br label %87

87:                                               ; preds = %94, %82
  %88 = phi ptr [ %96, %94 ], [ %86, %82 ]
  %89 = phi i32 [ %95, %94 ], [ 0, %82 ]
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %90 to i32
  switch i32 %91, label %94 [
    i32 0, label %97
    i32 -1, label %92
  ]

92:                                               ; preds = %87
  %93 = add i32 %89, 1
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %93, %92 ], [ %89, %87 ]
  %96 = getelementptr ptr, ptr %88, i32 1
  br label %87

97:                                               ; preds = %87
  %98 = ptrtoint ptr %88 to i32
  %99 = ptrtoint ptr %86 to i32
  %100 = sub i32 %98, %99
  %101 = ashr i32 %100, 2
  %102 = sub i32 %101, %89
  %103 = icmp eq i32 %101, %89
  br i1 %103, label %141, label %104

104:                                              ; preds = %97
  %105 = icmp ugt i32 %102, 255
  br i1 %105, label %106, label %108

106:                                              ; preds = %104
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.parent_process, i32 noundef %102, i32 noundef 255) #9
  br label %152

108:                                              ; preds = %104
  %109 = shl nuw nsw i32 %102, 2
  %110 = call noalias align 64 ptr @__kmalloc(i32 noundef %109, i32 noundef 3264) #10
  store ptr %110, ptr @parent_process.parent_names, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %152, label %112

112:                                              ; preds = %108
  %113 = call noalias align 64 ptr @__kmalloc(i32 noundef %109, i32 noundef 3264) #10
  store ptr %113, ptr @parent_process.parent_sel, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = icmp eq ptr %88, %86
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  %118 = load ptr, ptr @parent_process.parent_names, align 4
  br label %138

119:                                              ; preds = %115
  %120 = call i32 @llvm.umax.i32(i32 %101, i32 1) #8
  %121 = load ptr, ptr @parent_process.parent_names, align 4
  br label %124

122:                                              ; preds = %112
  %123 = load ptr, ptr @parent_process.parent_names, align 4
  call void @kfree(ptr noundef %123) #8
  br label %152

124:                                              ; preds = %134, %119
  %125 = phi i32 [ %135, %134 ], [ 0, %119 ]
  %126 = phi i32 [ %136, %134 ], [ 0, %119 ]
  %127 = getelementptr ptr, ptr %86, i32 %126
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, inttoptr (i32 -1 to ptr)
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  %131 = getelementptr ptr, ptr %121, i32 %125
  store ptr %128, ptr %131, align 4
  %132 = getelementptr i32, ptr %113, i32 %125
  store i32 %126, ptr %132, align 4
  %133 = add i32 %125, 1
  br label %134

134:                                              ; preds = %130, %124
  %135 = phi i32 [ %133, %130 ], [ %125, %124 ]
  %136 = add nuw i32 %126, 1
  %137 = icmp eq i32 %136, %120
  br i1 %137, label %138, label %124

138:                                              ; preds = %134, %117
  %139 = phi ptr [ %118, %117 ], [ %121, %134 ]
  %140 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %152, label %141

141:                                              ; preds = %138, %97
  %142 = phi ptr [ %113, %138 ], [ null, %97 ]
  %143 = phi i32 [ %102, %138 ], [ 0, %97 ]
  %144 = phi ptr [ %139, %138 ], [ null, %97 ]
  %145 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72, i32 1, i32 2
  store ptr %144, ptr %145, align 4
  %146 = trunc i32 %143 to i8
  %147 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %72, i32 1, i32 5
  store i8 %146, ptr %147, align 4
  %148 = getelementptr inbounds %struct.peri_clk_data, ptr %84, i32 0, i32 7, i32 3
  store i32 %143, ptr %148, align 4
  %149 = getelementptr inbounds %struct.peri_clk_data, ptr %84, i32 0, i32 7, i32 4
  store ptr %142, ptr %149, align 4
  %150 = load i32, ptr %79, align 4
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %160, label %450

152:                                              ; preds = %138, %122, %108, %106
  %153 = phi ptr [ %113, %138 ], [ inttoptr (i32 -12 to ptr), %108 ], [ inttoptr (i32 -12 to ptr), %122 ], [ inttoptr (i32 -22 to ptr), %106 ]
  %154 = ptrtoint ptr %153 to i32
  %155 = load ptr, ptr %78, align 4
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.clk_sel_setup, ptr noundef %155, i32 noundef %154) #9
  br label %479

157:                                              ; preds = %76
  %158 = load ptr, ptr %78, align 4
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.kona_clk_setup, i32 noundef %80, ptr noundef %158) #9
  br label %479

160:                                              ; preds = %141
  %161 = load ptr, ptr %83, align 4
  %162 = load ptr, ptr %78, align 4
  %163 = load ptr, ptr %73, align 4
  %164 = getelementptr inbounds %struct.ccu_data, ptr %163, i32 0, i32 7
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, -4
  %167 = and i32 %166, -4
  %168 = load i32, ptr %161, align 4
  %169 = icmp ne i32 %168, 0
  %170 = icmp ugt i32 %168, %167
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %168, i32 noundef %167) #9
  br label %459

174:                                              ; preds = %160
  %175 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 2
  %176 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 1, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = icmp ugt i32 %182, %167
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %182, i32 noundef %167) #9
  br label %459

186:                                              ; preds = %180
  %187 = load i32, ptr %175, align 4
  %188 = icmp ne i32 %187, 0
  %189 = icmp ugt i32 %187, %167
  %190 = select i1 %188, i1 %189, i1 false
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %187, i32 noundef %167) #9
  br label %459

193:                                              ; preds = %174
  %194 = load i32, ptr %175, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162) #9
  br label %459

198:                                              ; preds = %193, %186
  %199 = phi i32 [ 0, %193 ], [ %187, %186 ]
  %200 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 6, i32 1
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 6
  %206 = load i32, ptr %205, align 8
  %207 = icmp ugt i32 %206, %167
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %206, i32 noundef %167) #9
  br label %459

210:                                              ; preds = %204, %198
  %211 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 4, i32 1
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 4
  %217 = load i32, ptr %216, align 8
  %218 = icmp ugt i32 %217, %167
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %217, i32 noundef %167) #9
  br label %459

221:                                              ; preds = %215, %210
  %222 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 7, i32 2
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 7
  %227 = load i32, ptr %226, align 4
  %228 = icmp ugt i32 %227, %167
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %227, i32 noundef %167) #9
  br label %459

231:                                              ; preds = %225, %221
  %232 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 5, i32 2
  %233 = load i32, ptr %232, align 4
  %234 = and i32 %233, 1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 5
  %238 = load i32, ptr %237, align 4
  %239 = icmp ugt i32 %238, %167
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %238, i32 noundef %167) #9
  br label %459

242:                                              ; preds = %236, %231
  %243 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 3, i32 2
  %244 = load i32, ptr %243, align 4
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 3
  %249 = load i32, ptr %248, align 4
  %250 = icmp ugt i32 %249, %167
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.peri_clk_data_offsets_valid, ptr noundef %162, i32 noundef %249, i32 noundef %167) #9
  br label %459

253:                                              ; preds = %247, %242
  %254 = icmp eq i32 %168, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.bcm_clk_policy, ptr %161, i32 0, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = icmp ugt i32 %257, 31
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.40, ptr noundef %162, i32 noundef %257, i32 noundef 31) #9
  br label %459

261:                                              ; preds = %255, %253
  br i1 %179, label %290, label %262

262:                                              ; preds = %261
  %263 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 1, i32 1
  %264 = load i32, ptr %263, align 4
  %265 = icmp ugt i32 %264, 31
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.41, ptr noundef %162, i32 noundef %264, i32 noundef 31) #9
  br label %459

268:                                              ; preds = %262
  %269 = and i32 %177, 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %286, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 1, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = icmp ugt i32 %273, 31
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.42, ptr noundef %162, i32 noundef %273, i32 noundef 31) #9
  br label %459

277:                                              ; preds = %271
  %278 = and i32 %177, 2
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %290, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 1, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = icmp ugt i32 %282, 31
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.43, ptr noundef %162, i32 noundef %282, i32 noundef 31) #9
  br label %459

286:                                              ; preds = %268
  %287 = and i32 %177, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290, !prof !8

289:                                              ; preds = %286
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona-setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 270, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

290:                                              ; preds = %286, %280, %277, %261
  %291 = icmp eq i32 %199, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 2, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = icmp ugt i32 %294, 31
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.44, ptr noundef %162, i32 noundef %294, i32 noundef 31) #9
  br label %459

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 2, i32 2
  %300 = load i32, ptr %299, align 4
  %301 = icmp ugt i32 %300, 31
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.45, ptr noundef %162, i32 noundef %300, i32 noundef 31) #9
  br label %459

304:                                              ; preds = %298, %290
  br i1 %224, label %331, label %305

305:                                              ; preds = %304
  %306 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 7, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = add i32 %307, %223
  %309 = icmp ugt i32 %308, 32
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.bitfield_valid, ptr noundef nonnull @.str.21, ptr noundef %162, i32 noundef %307, i32 noundef %223, i32 noundef 32) #9
  br label %459

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 7, i32 3
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %326, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 7, i32 4
  %318 = load ptr, ptr %317, align 4
  %319 = add i32 %314, -1
  %320 = getelementptr i32, ptr %318, i32 %319
  %321 = load i32, ptr %320, align 4
  %322 = lshr i32 %321, %223
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %337, label %324

324:                                              ; preds = %316
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.sel_valid, ptr noundef %162, i32 noundef %321, i32 noundef %223) #9
  br label %459

326:                                              ; preds = %312
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.sel_valid, ptr noundef %162) #9
  store i32 0, ptr %222, align 4
  %328 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 7, i32 4
  %329 = load ptr, ptr %328, align 4
  call void @kfree(ptr noundef %329) #8
  store ptr null, ptr %328, align 4
  %330 = load i32, ptr %200, align 8
  br label %337

331:                                              ; preds = %304
  %332 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 7, i32 3
  %333 = load i32, ptr %332, align 4
  %334 = icmp ugt i32 %333, 1
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.peri_clk_data_valid, ptr noundef %162) #9
  br label %459

337:                                              ; preds = %331, %326, %316
  %338 = phi i32 [ %330, %326 ], [ %201, %316 ], [ %201, %331 ]
  %339 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 4
  %340 = and i32 %338, 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %351, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 6
  %344 = call fastcc zeroext i1 @div_valid(ptr noundef %343, ptr noundef nonnull @.str.23, ptr noundef %162) #8
  br i1 %344, label %345, label %459

345:                                              ; preds = %342
  %346 = load i32, ptr %211, align 8
  %347 = and i32 %346, 1
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %345
  %350 = call fastcc zeroext i1 @div_valid(ptr noundef %339, ptr noundef nonnull @.str.24, ptr noundef %162) #8
  br i1 %350, label %357, label %459

351:                                              ; preds = %337
  %352 = load i32, ptr %211, align 8
  %353 = and i32 %352, 1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %351
  %356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.peri_clk_data_valid, ptr noundef %162) #9
  br label %459

357:                                              ; preds = %351, %349, %345
  %358 = load i32, ptr %232, align 4
  %359 = and i32 %358, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %392, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.peri_clk_data, ptr %161, i32 0, i32 5, i32 1
  %363 = load i32, ptr %362, align 4
  %364 = icmp ugt i32 %363, 31
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bit_posn_valid, ptr noundef nonnull @.str.26, ptr noundef %162, i32 noundef %363, i32 noundef 31) #9
  br label %459

367:                                              ; preds = %361
  %368 = load ptr, ptr %83, align 4
  %369 = load i32, ptr %79, align 4
  %370 = icmp eq i32 %369, 3
  br i1 %370, label %371, label %425

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.peri_clk_data, ptr %368, i32 0, i32 7, i32 3
  %373 = load i32, ptr %372, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.peri_clk_data, ptr %368, i32 0, i32 7, i32 2
  %377 = load i32, ptr %376, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %433

379:                                              ; preds = %375, %371
  %380 = getelementptr inbounds %struct.peri_clk_data, ptr %368, i32 0, i32 6, i32 1
  %381 = load i32, ptr %380, align 8
  %382 = and i32 %381, 1
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %425, label %384

384:                                              ; preds = %379
  %385 = and i32 %381, 2
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %433, label %387

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct.peri_clk_data, ptr %368, i32 0, i32 4, i32 1
  %389 = load i32, ptr %388, align 8
  %390 = and i32 %389, 3
  %391 = icmp eq i32 %390, 1
  br i1 %391, label %433, label %425

392:                                              ; preds = %357
  %393 = load i32, ptr %243, align 8
  %394 = and i32 %393, 1
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %398, label %396

396:                                              ; preds = %392
  %397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.peri_clk_data_valid, ptr noundef %162) #9
  br label %459

398:                                              ; preds = %392
  %399 = load ptr, ptr %83, align 4
  %400 = load i32, ptr %79, align 4
  %401 = icmp eq i32 %400, 3
  br i1 %401, label %402, label %432

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.peri_clk_data, ptr %399, i32 0, i32 7, i32 3
  %404 = load i32, ptr %403, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.peri_clk_data, ptr %399, i32 0, i32 7, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %406, %402
  %411 = getelementptr inbounds %struct.peri_clk_data, ptr %399, i32 0, i32 6, i32 1
  %412 = load i32, ptr %411, align 8
  %413 = and i32 %412, 1
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %433, label %415

415:                                              ; preds = %410
  %416 = and i32 %412, 2
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.peri_clk_data, ptr %399, i32 0, i32 4, i32 1
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, 3
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %423, label %433

423:                                              ; preds = %418, %415, %406
  %424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.peri_clk_data_valid, ptr noundef %162) #9
  br label %459

425:                                              ; preds = %387, %379, %367
  %426 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.peri_clk_data_valid, ptr noundef %162) #9
  %427 = load i32, ptr %232, align 4
  %428 = and i32 %427, -2
  store i32 %428, ptr %232, align 4
  %429 = load i32, ptr %79, align 4
  %430 = load ptr, ptr %83, align 4
  %431 = icmp eq i32 %429, 3
  br i1 %431, label %433, label %432, !prof !10

432:                                              ; preds = %425, %398
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona-setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

433:                                              ; preds = %425, %418, %410, %387, %384, %375
  %434 = phi ptr [ %430, %425 ], [ %368, %387 ], [ %399, %410 ], [ %399, %418 ], [ %368, %375 ], [ %368, %384 ]
  %435 = getelementptr inbounds %struct.peri_clk_data, ptr %434, i32 0, i32 6, i32 1
  %436 = load i32, ptr %435, align 8
  %437 = and i32 %436, 1
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %462, label %439

439:                                              ; preds = %433
  %440 = getelementptr inbounds %struct.peri_clk_data, ptr %434, i32 0, i32 4, i32 1
  %441 = load i32, ptr %440, align 8
  %442 = and i32 %441, 1
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %462, label %444

444:                                              ; preds = %439
  %445 = and i32 %436, 2
  %446 = icmp eq i32 %445, 0
  %447 = and i32 %441, 2
  %448 = icmp eq i32 %447, 0
  %449 = select i1 %446, i1 %448, i1 false
  br i1 %449, label %452, label %462

450:                                              ; preds = %141
  %451 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.kona_clk_valid, i32 noundef %150) #9
  br label %459

452:                                              ; preds = %444
  %453 = getelementptr inbounds %struct.peri_clk_data, ptr %434, i32 0, i32 6, i32 0, i32 0, i32 3
  %454 = load i32, ptr %453, align 4
  %455 = getelementptr inbounds %struct.peri_clk_data, ptr %434, i32 0, i32 4, i32 0, i32 0, i32 3
  %456 = load i32, ptr %455, align 4
  %457 = add i32 %456, %454
  %458 = icmp ult i32 %457, 33
  br i1 %458, label %462, label %459

459:                                              ; preds = %452, %450, %423, %396, %365, %355, %349, %342, %335, %324, %310, %302, %296, %284, %275, %266, %259, %251, %240, %229, %219, %208, %196, %191, %184, %172
  %460 = load ptr, ptr %78, align 4
  %461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kona_clk_setup, ptr noundef %460) #9
  br label %469

462:                                              ; preds = %452, %444, %439, %433
  %463 = getelementptr inbounds %struct.clk_hw, ptr %77, i32 0, i32 2
  store ptr %78, ptr %463, align 4
  %464 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %77) #8
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %479, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %78, align 4
  %468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.kona_clk_setup, ptr noundef %467, i32 noundef %464) #9
  br label %469

469:                                              ; preds = %466, %459
  %470 = load i32, ptr %79, align 4
  %471 = icmp eq i32 %470, 3
  br i1 %471, label %472, label %478

472:                                              ; preds = %469
  %473 = load ptr, ptr %83, align 4
  %474 = getelementptr inbounds %struct.peri_clk_data, ptr %473, i32 0, i32 7, i32 4
  %475 = load ptr, ptr %474, align 4
  call void @kfree(ptr noundef %475) #8
  store ptr null, ptr %474, align 4
  %476 = getelementptr inbounds %struct.peri_clk_data, ptr %473, i32 0, i32 7, i32 3
  store i32 0, ptr %476, align 4
  store i8 0, ptr %147, align 4
  %477 = load ptr, ptr %145, align 4
  call void @kfree(ptr noundef %477) #8
  store ptr null, ptr %145, align 4
  br label %478

478:                                              ; preds = %472, %469
  store ptr null, ptr %83, align 4
  store i32 0, ptr %79, align 4
  br label %479

479:                                              ; preds = %478, %462, %157, %152, %71
  %480 = add nuw i32 %72, 1
  %481 = load i32, ptr %68, align 4
  %482 = icmp ult i32 %480, %481
  br i1 %482, label %71, label %483

483:                                              ; preds = %479, %65
  %484 = call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_kona_onecell_get, ptr noundef %0) #8
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %483
  %487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.kona_dt_ccu_setup, ptr noundef %1, i32 noundef %484) #9
  br label %490

488:                                              ; preds = %483
  %489 = call zeroext i1 @kona_ccu_init(ptr noundef %0) #9
  br i1 %489, label %530, label %527

490:                                              ; preds = %486, %63, %58, %6
  %491 = load ptr, ptr %0, align 4
  %492 = icmp eq ptr %491, null
  br i1 %492, label %527, label %493

493:                                              ; preds = %490
  %494 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 4
  %495 = load ptr, ptr %494, align 4
  call void @of_clk_del_provider(ptr noundef %495) #8
  %496 = getelementptr inbounds %struct.ccu_data, ptr %0, i32 0, i32 5
  %497 = load i32, ptr %496, align 4
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %524, label %499

499:                                              ; preds = %520, %493
  %500 = phi i32 [ %521, %520 ], [ %497, %493 ]
  %501 = phi i32 [ %522, %520 ], [ 0, %493 ]
  %502 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %501
  %503 = icmp eq ptr %502, null
  br i1 %503, label %520, label %504

504:                                              ; preds = %499
  call void @clk_hw_unregister(ptr noundef nonnull %502) #8
  %505 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %501, i32 3
  %506 = load i32, ptr %505, align 4
  %507 = icmp eq i32 %506, 3
  br i1 %507, label %508, label %517

508:                                              ; preds = %504
  %509 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %501, i32 4
  %510 = load ptr, ptr %509, align 4
  %511 = getelementptr inbounds %struct.peri_clk_data, ptr %510, i32 0, i32 7, i32 4
  %512 = load ptr, ptr %511, align 4
  call void @kfree(ptr noundef %512) #8
  store ptr null, ptr %511, align 4
  %513 = getelementptr inbounds %struct.peri_clk_data, ptr %510, i32 0, i32 7, i32 3
  store i32 0, ptr %513, align 4
  %514 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %501, i32 1, i32 5
  store i8 0, ptr %514, align 4
  %515 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %501, i32 1, i32 2
  %516 = load ptr, ptr %515, align 4
  call void @kfree(ptr noundef %516) #8
  store ptr null, ptr %515, align 4
  br label %517

517:                                              ; preds = %508, %504
  %518 = getelementptr %struct.ccu_data, ptr %0, i32 0, i32 8, i32 %501, i32 4
  store ptr null, ptr %518, align 4
  store i32 0, ptr %505, align 4
  %519 = load i32, ptr %496, align 4
  br label %520

520:                                              ; preds = %517, %499
  %521 = phi i32 [ %500, %499 ], [ %519, %517 ]
  %522 = add nuw i32 %501, 1
  %523 = icmp ult i32 %522, %521
  br i1 %523, label %499, label %524

524:                                              ; preds = %520, %493
  %525 = load ptr, ptr %494, align 4
  call void @of_node_put(ptr noundef %525) #8
  store ptr null, ptr %494, align 4
  %526 = load ptr, ptr %0, align 4
  call void @iounmap(ptr noundef %526) #8
  store ptr null, ptr %0, align 4
  br label %527

527:                                              ; preds = %524, %490, %488
  %528 = phi ptr [ @.str.5, %488 ], [ @.str.6, %490 ], [ @.str.6, %524 ]
  %529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %528, ptr noundef %1) #9
  br label %530

530:                                              ; preds = %527, %488
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_clk_kona_onecell_get(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ccu_data, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.of_clk_kona_onecell_get, i32 noundef %4) #9
  br label %12

10:                                               ; preds = %2
  %11 = getelementptr %struct.ccu_data, ptr %1, i32 0, i32 8, i32 %4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @kona_ccu_init(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @div_valid(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.bcm_clk_div, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %0, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.div_valid, ptr noundef %1, ptr noundef %2) #9
  br label %34

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.bitfield_valid, ptr noundef %1, ptr noundef %2) #9
  br label %34

21:                                               ; preds = %13
  %22 = add i32 %17, %15
  %23 = icmp ugt i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.bitfield_valid, ptr noundef %1, ptr noundef %2, i32 noundef %15, i32 noundef %17, i32 noundef 32) #9
  br label %34

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = icmp ugt i32 %28, %17
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.div_valid, ptr noundef %1, ptr noundef %2, i32 noundef %28, i32 noundef %17) #9
  br label %34

34:                                               ; preds = %32, %26, %24, %19, %11, %8
  %35 = phi i1 [ false, %11 ], [ false, %32 ], [ true, %8 ], [ true, %26 ], [ false, %24 ], [ false, %19 ]
  ret i1 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i64 2151498535, i64 2151499032, i64 2151498572, i64 2151498628, i64 2151498662, i64 2151498686, i64 2151498727, i64 2151498748, i64 2151498776, i64 2151498810}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2151502615, i64 2151503112, i64 2151502652, i64 2151502708, i64 2151502742, i64 2151502766, i64 2151502807, i64 2151502828, i64 2151502856, i64 2151502890}
