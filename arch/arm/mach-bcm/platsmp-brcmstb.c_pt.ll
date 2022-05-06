; ModuleID = '/llk/IR/arch/arm/mach-bcm/platsmp-brcmstb.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/platsmp-brcmstb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [16 x i8] c"brcm,brahma-b15\00", align 1
@brcmstb_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @brcmstb_cpu_ctrl_setup, ptr null, ptr @brcmstb_boot_secondary, ptr @brcmstb_cpu_kill, ptr @brcmstb_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_brcmstb_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @brcmstb_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"brcm,brcmstb-smpboot\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\013can't find compatible node %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"syscon-cpu\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\013can't find phandle %s\0A\00", align 1
@cpubiuctrl_block = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"\013iomap failed for cpubiuctrl_block\0A\00", align 1
@cpu0_pwr_zone_ctrl_reg = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"\013failed to read 1st entry from %s property (%d)\0A\00", align 1
@cpu_rst_cfg_reg = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"\013failed to read 2nd entry from %s property (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"syscon-cont\00", align 1
@hif_cont_block = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"\013iomap failed for hif_cont_block\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"ZONE_MEM_PWR_STATE_MASK set timeout\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"ZONE_DPG_PWR_STATE_MASK set timeout\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@per_cpu_sw_state = internal global i32 0, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"\014SMP: refusing to power off CPU0\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"ZONE_MEM_PWR_STATE_MASK clear timeout\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"ZONE_DPG_PWR_STATE_MASK clear timeout\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_method_of_table_brcmstb_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcmstb_cpu_ctrl_setup(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #9
  br label %11

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef nonnull %2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @setup_hifcont_regs(ptr noundef nonnull %2) #10
  br label %10

10:                                               ; preds = %9, %6
  tail call void @of_node_put(ptr noundef nonnull %2) #8
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @cpubiuctrl_block, align 4
  %4 = icmp ne ptr %3, null
  %5 = load ptr, ptr @hif_cont_block, align 4
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %167

8:                                                ; preds = %2
  %9 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %10 = getelementptr i8, ptr %3, i32 %9
  %11 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 2
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %131

17:                                               ; preds = %8
  %18 = load ptr, ptr @cpubiuctrl_block, align 4
  %19 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = load i32, ptr %11, align 4
  %22 = shl i32 %21, 2
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %25 = and i32 %24, -256
  %26 = or i32 %25, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %26) #8, !srcloc !11
  %27 = load ptr, ptr @cpubiuctrl_block, align 4
  %28 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = load i32, ptr %11, align 4
  %31 = shl i32 %30, 2
  %32 = getelementptr i8, ptr %29, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %34 = or i32 %33, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #8, !srcloc !11
  %35 = load ptr, ptr @cpubiuctrl_block, align 4
  %36 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = load i32, ptr %11, align 4
  %39 = shl i32 %38, 2
  %40 = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %42 = or i32 %41, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #8, !srcloc !11
  %43 = load ptr, ptr @cpubiuctrl_block, align 4
  %44 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = load i32, ptr %11, align 4
  %47 = shl i32 %46, 2
  %48 = getelementptr i8, ptr %45, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %50 = or i32 %49, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %50) #8, !srcloc !11
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = sub i32 -50, %51
  br label %53

53:                                               ; preds = %63, %17
  %54 = load ptr, ptr @cpubiuctrl_block, align 4
  %55 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %56 = getelementptr i8, ptr %54, i32 %55
  %57 = load i32, ptr %11, align 4
  %58 = shl i32 %57, 2
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !8
  %61 = and i32 %60, 536870912
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %53
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = add i32 %52, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %53, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @cpubiuctrl_block, align 4
  %69 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %70 = getelementptr i8, ptr %68, i32 %69
  %71 = load i32, ptr %11, align 4
  %72 = shl i32 %71, 2
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !8
  %75 = and i32 %74, 536870912
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10) #11
  unreachable

78:                                               ; preds = %67, %53
  %79 = load ptr, ptr @cpubiuctrl_block, align 4
  %80 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %81 = getelementptr i8, ptr %79, i32 %80
  %82 = load i32, ptr %11, align 4
  %83 = shl i32 %82, 2
  %84 = getelementptr i8, ptr %81, i32 %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %86 = or i32 %85, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %86) #8, !srcloc !11
  %87 = load volatile i32, ptr @jiffies, align 64
  %88 = sub i32 -50, %87
  br label %89

89:                                               ; preds = %99, %78
  %90 = load ptr, ptr @cpubiuctrl_block, align 4
  %91 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %92 = getelementptr i8, ptr %90, i32 %91
  %93 = load i32, ptr %11, align 4
  %94 = shl i32 %93, 2
  %95 = getelementptr i8, ptr %92, i32 %94
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #8, !srcloc !8
  %97 = and i32 %96, 268435456
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %89
  %100 = load volatile i32, ptr @jiffies, align 64
  %101 = add i32 %88, %100
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %89, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr @cpubiuctrl_block, align 4
  %105 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %106 = getelementptr i8, ptr %104, i32 %105
  %107 = load i32, ptr %11, align 4
  %108 = shl i32 %107, 2
  %109 = getelementptr i8, ptr %106, i32 %108
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #8, !srcloc !8
  %111 = and i32 %110, 268435456
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11) #11
  unreachable

114:                                              ; preds = %103, %89
  %115 = load ptr, ptr @cpubiuctrl_block, align 4
  %116 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %117 = getelementptr i8, ptr %115, i32 %116
  %118 = load i32, ptr %11, align 4
  %119 = shl i32 %118, 2
  %120 = getelementptr i8, ptr %117, i32 %119
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %122 = and i32 %121, -65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %122) #8, !srcloc !11
  %123 = load ptr, ptr @cpubiuctrl_block, align 4
  %124 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %125 = getelementptr i8, ptr %123, i32 %124
  %126 = load i32, ptr %11, align 4
  %127 = shl i32 %126, 2
  %128 = getelementptr i8, ptr %125, i32 %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %130 = or i32 %129, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %130) #8, !srcloc !11
  br label %131

131:                                              ; preds = %114, %8
  tail call void asm sideeffect "dmb ", "~{memory}"() #8, !srcloc !14
  %132 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, ptrtoint (ptr @per_cpu_sw_state to i32)
  %135 = inttoptr i32 %134 to ptr
  store i32 1, ptr %135, align 4
  %136 = load i32, ptr %132, align 4
  %137 = add i32 %136, ptrtoint (ptr @per_cpu_sw_state to i32)
  %138 = inttoptr i32 %137 to ptr
  %139 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %139(ptr noundef %138, i32 noundef 4) #8
  %140 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %137, i32 -2130706432, i32 8454144) #12, !srcloc !15
  %141 = getelementptr i8, ptr %138, i32 4
  %142 = ptrtoint ptr %141 to i32
  %143 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %142, i32 -2130706432, i32 8454144) #12, !srcloc !15
  %144 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %131
  tail call void %144(i32 noundef %140, i32 noundef %143) #8
  br label %147

147:                                              ; preds = %146, %131
  %148 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #12, !srcloc !15
  %149 = load i32, ptr %11, align 4
  %150 = shl i32 %149, 3
  %151 = load ptr, ptr @hif_cont_block, align 4
  %152 = getelementptr i8, ptr %151, i32 %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 0) #8, !srcloc !11
  %153 = load ptr, ptr @hif_cont_block, align 4
  %154 = getelementptr i8, ptr %153, i32 4
  %155 = getelementptr i8, ptr %154, i32 %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %148) #8, !srcloc !11
  %156 = load ptr, ptr @cpubiuctrl_block, align 4
  %157 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %158 = getelementptr i8, ptr %156, i32 %157
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #8, !srcloc !8
  %160 = load i32, ptr %11, align 4
  %161 = shl nuw i32 1, %160
  %162 = xor i32 %161, -1
  %163 = and i32 %159, %162
  %164 = load ptr, ptr @cpubiuctrl_block, align 4
  %165 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %166 = getelementptr i8, ptr %164, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %163) #8, !srcloc !11
  br label %167

167:                                              ; preds = %147, %2
  %168 = phi i32 [ 0, %147 ], [ -19, %2 ]
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_cpu_kill(i32 noundef %0) #1 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %146

8:                                                ; preds = %23, %3
  %9 = phi i32 [ %5, %3 ], [ %25, %23 ]
  %10 = add i32 %9, ptrtoint (ptr @per_cpu_sw_state to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %15(ptr noundef %11, i32 noundef 4) #8
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #12, !srcloc !15
  %17 = getelementptr i8, ptr %11, i32 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %18, i32 -2130706432, i32 8454144) #12, !srcloc !15
  %20 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void %20(i32 noundef %16, i32 noundef %19) #8
  br label %23

23:                                               ; preds = %22, %14, %8
  %24 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %24(ptr noundef %11, i32 noundef 4) #8
  %25 = load i32, ptr %4, align 4
  %26 = add i32 %25, ptrtoint (ptr @per_cpu_sw_state to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %8

30:                                               ; preds = %23
  %31 = load ptr, ptr @cpubiuctrl_block, align 4
  %32 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 2
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %39 = or i32 %38, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #8, !srcloc !11
  %40 = load ptr, ptr @cpubiuctrl_block, align 4
  %41 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = load i32, ptr %34, align 4
  %44 = shl i32 %43, 2
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %47 = and i32 %46, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #8, !srcloc !11
  %48 = load ptr, ptr @cpubiuctrl_block, align 4
  %49 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %50 = getelementptr i8, ptr %48, i32 %49
  %51 = load i32, ptr %34, align 4
  %52 = shl i32 %51, 2
  %53 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %55 = and i32 %54, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %55) #8, !srcloc !11
  %56 = load ptr, ptr @cpubiuctrl_block, align 4
  %57 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = load i32, ptr %34, align 4
  %60 = shl i32 %59, 2
  %61 = getelementptr i8, ptr %58, i32 %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %63 = or i32 %62, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %63) #8, !srcloc !11
  %64 = load ptr, ptr @cpubiuctrl_block, align 4
  %65 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %66 = getelementptr i8, ptr %64, i32 %65
  %67 = load i32, ptr %34, align 4
  %68 = shl i32 %67, 2
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %71 = and i32 %70, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %71) #8, !srcloc !11
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = sub i32 -50, %72
  br label %74

74:                                               ; preds = %84, %30
  %75 = load ptr, ptr @cpubiuctrl_block, align 4
  %76 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %77 = getelementptr i8, ptr %75, i32 %76
  %78 = load i32, ptr %34, align 4
  %79 = shl i32 %78, 2
  %80 = getelementptr i8, ptr %77, i32 %79
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #8, !srcloc !8
  %82 = and i32 %81, 536870912
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %74
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = add i32 %73, %85
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %74, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr @cpubiuctrl_block, align 4
  %90 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %91 = getelementptr i8, ptr %89, i32 %90
  %92 = load i32, ptr %34, align 4
  %93 = shl i32 %92, 2
  %94 = getelementptr i8, ptr %91, i32 %93
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #8, !srcloc !8
  %96 = and i32 %95, 536870912
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13) #11
  unreachable

99:                                               ; preds = %88, %74
  %100 = load ptr, ptr @cpubiuctrl_block, align 4
  %101 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %102 = getelementptr i8, ptr %100, i32 %101
  %103 = load i32, ptr %34, align 4
  %104 = shl i32 %103, 2
  %105 = getelementptr i8, ptr %102, i32 %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %107 = and i32 %106, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %107) #8, !srcloc !11
  %108 = load volatile i32, ptr @jiffies, align 64
  %109 = sub i32 -50, %108
  br label %110

110:                                              ; preds = %120, %99
  %111 = load ptr, ptr @cpubiuctrl_block, align 4
  %112 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %113 = getelementptr i8, ptr %111, i32 %112
  %114 = load i32, ptr %34, align 4
  %115 = shl i32 %114, 2
  %116 = getelementptr i8, ptr %113, i32 %115
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #8, !srcloc !8
  %118 = and i32 %117, 268435456
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %110
  %121 = load volatile i32, ptr @jiffies, align 64
  %122 = add i32 %109, %121
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %110, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr @cpubiuctrl_block, align 4
  %126 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %127 = getelementptr i8, ptr %125, i32 %126
  %128 = load i32, ptr %34, align 4
  %129 = shl i32 %128, 2
  %130 = getelementptr i8, ptr %127, i32 %129
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #8, !srcloc !8
  %132 = and i32 %131, 268435456
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %124
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #11
  unreachable

135:                                              ; preds = %124, %110
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %136 = load ptr, ptr @cpubiuctrl_block, align 4
  %137 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %138 = getelementptr i8, ptr %136, i32 %137
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #8, !srcloc !8
  %140 = load i32, ptr %34, align 4
  %141 = shl nuw i32 1, %140
  %142 = or i32 %141, %139
  %143 = load ptr, ptr @cpubiuctrl_block, align 4
  %144 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %145 = getelementptr i8, ptr %143, i32 %144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %142) #8, !srcloc !11
  br label %146

146:                                              ; preds = %135, %6
  ret i32 1
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_cpu_die(i32 noundef %0) #2 {
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "dmb ", "~{memory}"() #8, !srcloc !14
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @per_cpu_sw_state to i32)
  %5 = inttoptr i32 %4 to ptr
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %2, align 4
  %7 = add i32 %6, ptrtoint (ptr @per_cpu_sw_state to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %9(ptr noundef %8, i32 noundef 4) #8
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %7, i32 -2130706432, i32 8454144) #12, !srcloc !15
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %12, i32 -2130706432, i32 8454144) #12, !srcloc !15
  %14 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void %14(i32 noundef %10, i32 noundef %13) #8
  br label %17

17:                                               ; preds = %16, %1
  tail call void asm sideeffect "wfi", "~{memory}"() #8, !srcloc !18
  br label %18

18:                                               ; preds = %18, %17
  br label %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !19
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #9
  br label %25

10:                                               ; preds = %1
  %11 = call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #8
  store ptr %11, ptr @cpubiuctrl_block, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %25

15:                                               ; preds = %10
  %16 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @cpu0_pwr_zone_ctrl_reg) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %16) #9
  br label %25

20:                                               ; preds = %15
  %21 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull @cpu_rst_cfg_reg) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %21) #9
  br label %25

25:                                               ; preds = %23, %20, %18, %13, %8
  %26 = phi i32 [ -22, %18 ], [ -22, %23 ], [ 0, %20 ], [ -22, %13 ], [ -22, %8 ]
  call void @of_node_put(ptr noundef %6) #8
  ret i32 %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @setup_hifcont_regs(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !19
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #9
  br label %15

10:                                               ; preds = %1
  %11 = call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #8
  store ptr %11, ptr @hif_cont_block, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %15

15:                                               ; preds = %13, %10, %8
  call void @of_node_put(ptr noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 2390837}
!9 = !{i64 2153004787}
!10 = !{i64 2153005237}
!11 = !{i64 2390419}
!12 = !{i64 2153005896}
!13 = !{i64 2153006347}
!14 = !{i64 2153002056}
!15 = !{i64 2148733015, i64 2148733038, i64 2148733070, i64 2148733102, i64 2148733140, i64 2148733170}
!16 = !{i64 2153009630}
!17 = !{i64 2153008422, i64 2153008439, i64 2153008469, i64 2153008517, i64 2153008560, i64 2153008608, i64 2153008622, i64 2153008672, i64 2153008720, i64 2153008778, i64 2153008826, i64 2153008840, i64 2153008854}
!18 = !{i64 2153009074}
!19 = !{!"auto-init"}
