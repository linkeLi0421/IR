; ModuleID = '/llk/IR/arch/arm/mach-omap2/control.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/control.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap3_control_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.control_init_data = type { i32, ptr, i16 }
%struct.omap3_scratchpad = type { i32, i32, i32, i32, i32, i32 }
%struct.omap3_scratchpad_prcm_block = type { [2 x i32], [11 x i32], i32 }
%struct.omap3_scratchpad_sdrc_block = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32 }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }

@omap2_ctrl_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"\013%s: unsupported omap type\0A\00", align 1
@__func__.omap_ctrl_write_dsp_boot_addr = private unnamed_addr constant [30 x i8] c"omap_ctrl_write_dsp_boot_addr\00", align 1
@__func__.omap_ctrl_write_dsp_boot_mode = private unnamed_addr constant [30 x i8] c"omap_ctrl_write_dsp_boot_mode\00", align 1
@omap3_secure_ram_storage = dso_local local_unnamed_addr global ptr null, align 4
@omap3_arm_context = dso_local global [128 x i32] zeroinitializer, align 4
@control_context = internal unnamed_addr global %struct.omap3_control_regs zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_scrm_dt_match_table = internal constant [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-scrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-scm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-scm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-scm-wkup-pad-conf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_aux_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-scm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id zeroinitializer], align 4
@omap_control_init.nb = internal global %struct.notifier_block zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"scm_conf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@omap2_sdrc_base = external dso_local local_unnamed_addr global ptr, align 4
@ctrl_data = internal global %struct.control_init_data { i32 4, ptr null, i16 0 }, align 4
@omap2_ctrl_data = internal constant %struct.control_init_data { i32 4, ptr null, i16 -624 }, align 4
@ctrl_aux_data = internal constant %struct.control_init_data { i32 5, ptr null, i16 0 }, align 4
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@am43xx_control_reg_offsets = internal unnamed_addr constant [55 x i32] [i32 16, i32 64, i32 480, i32 1064, i32 1068, i32 1092, i32 1096, i32 1100, i32 1112, i32 1128, i32 1136, i32 1332, i32 1544, i32 1548, i32 1556, i32 1568, i32 1576, i32 1612, i32 1616, i32 1620, i32 1624, i32 1636, i32 1648, i32 1652, i32 1680, i32 1684, i32 1688, i32 1692, i32 1696, i32 1700, i32 3584, i32 3592, i32 3596, i32 3604, i32 3984, i32 3988, i32 3992, i32 3996, i32 4000, i32 4004, i32 4008, i32 4012, i32 4016, i32 4020, i32 4024, i32 4028, i32 4032, i32 4036, i32 4040, i32 4044, i32 4048, i32 4052, i32 4056, i32 4060, i32 4096], align 4
@am33xx_control_vals = internal unnamed_addr global [55 x i32] zeroinitializer, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @omap_ctrl_readb(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = and i16 %0, -4
  %3 = load ptr, ptr @omap2_ctrl_base, align 4
  %4 = zext i16 %2 to i32
  %5 = getelementptr i8, ptr %3, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  %7 = shl i16 %0, 3
  %8 = and i16 %7, 24
  %9 = zext i16 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_ctrl_readl(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = and i16 %0, -4
  %3 = load ptr, ptr @omap2_ctrl_base, align 4
  %4 = zext i16 %2 to i32
  %5 = getelementptr i8, ptr %3, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @omap_ctrl_readw(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = and i16 %0, -4
  %3 = load ptr, ptr @omap2_ctrl_base, align 4
  %4 = zext i16 %2 to i32
  %5 = getelementptr i8, ptr %3, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  %7 = shl i16 %0, 3
  %8 = and i16 %7, 16
  %9 = zext i16 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = trunc i32 %10 to i16
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_ctrl_writeb(i8 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = and i16 %1, -4
  %4 = load ptr, ptr @omap2_ctrl_base, align 4
  %5 = zext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  %8 = shl i16 %1, 3
  %9 = and i16 %8, 24
  %10 = zext i16 %9 to i32
  %11 = shl nuw i32 255, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %7, %12
  %14 = zext i8 %0 to i32
  %15 = shl nuw i32 %14, %10
  %16 = or i32 %13, %15
  %17 = load ptr, ptr @omap2_ctrl_base, align 4
  %18 = getelementptr i8, ptr %17, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_ctrl_writel(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = and i16 %1, -4
  %4 = load ptr, ptr @omap2_ctrl_base, align 4
  %5 = zext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %0) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_ctrl_writew(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = and i16 %1, -4
  %4 = load ptr, ptr @omap2_ctrl_base, align 4
  %5 = zext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  %8 = shl i16 %1, 3
  %9 = and i16 %8, 16
  %10 = zext i16 %9 to i32
  %11 = shl nuw i32 65535, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %7, %12
  %14 = zext i16 %0 to i32
  %15 = shl nuw i32 %14, %10
  %16 = or i32 %13, %15
  %17 = load ptr, ptr @omap2_ctrl_base, align 4
  %18 = getelementptr i8, ptr %17, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_ctrl_write_boot_mode(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i8 %0 to i32
  %3 = or i32 %2, 1112342528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -100652780 to ptr), i32 %3) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_ctrl_write_dsp_boot_addr(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @omap_rev() #6
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 52
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @omap_rev() #6
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 68
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @omap_rev() #6
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 84
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_ctrl_write_dsp_boot_addr) #7
  br label %19

15:                                               ; preds = %9, %5, %1
  %16 = phi i32 [ 772, %5 ], [ 772, %9 ], [ 1024, %1 ]
  %17 = load ptr, ptr @omap2_ctrl_base, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %0) #6, !srcloc !9
  br label %19

19:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_ctrl_write_dsp_boot_mode(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = tail call i32 @omap_rev() #6
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 52
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_ctrl_write_dsp_boot_mode) #7
  br label %11

7:                                                ; preds = %1
  %8 = zext i8 %0 to i32
  %9 = load ptr, ptr @omap2_ctrl_base, align 4
  %10 = getelementptr i8, ptr %9, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !9
  br label %11

11:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_clear_scratchpad_contents() local_unnamed_addr #0 {
  %1 = tail call i32 @omap3xxx_prm_clear_global_cold_reset() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %6, %3 ], [ 0, %0 ]
  %5 = getelementptr i8, ptr inttoptr (i32 -100652960 to ptr), i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #6, !srcloc !9
  %6 = add nuw nsw i32 %4, 4
  %7 = icmp ult i32 %4, 409
  br i1 %7, label %3, label %8

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3xxx_prm_clear_global_cold_reset() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_save_scratchpad_contents() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.omap3_scratchpad, align 4
  %3 = alloca %struct.omap3_scratchpad_prcm_block, align 4
  %4 = alloca %struct.omap3_scratchpad_sdrc_block, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  store i32 0, ptr %1, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !10
  store i32 0, ptr %2, align 4
  %6 = tail call i32 @omap_rev() #6
  %7 = and i32 %6, -1048576
  %8 = icmp eq i32 %7, 909115392
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap3_restore_3630 to i32), i32 -2130706432, i32 8454144) #8, !srcloc !11
  br label %24

11:                                               ; preds = %0
  %12 = tail call i32 @omap_rev() #6
  %13 = icmp eq i32 %12, 875561780
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @omap_rev() #6
  %16 = icmp eq i32 %15, 875562036
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @omap_rev() #6
  %19 = icmp eq i32 %18, 875562292
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap3_restore to i32), i32 -2130706432, i32 8454144) #8, !srcloc !11
  br label %24

22:                                               ; preds = %17, %14, %11
  %23 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap3_restore_es3 to i32), i32 -2130706432, i32 8454144) #8, !srcloc !11
  br label %24

24:                                               ; preds = %22, %20, %9
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ], [ %10, %9 ]
  %26 = getelementptr inbounds %struct.omap3_scratchpad, ptr %2, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = tail call i32 @omap_type() #6
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @omap3_secure_ram_storage, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %31, i32 -2130706432, i32 8454144) #8, !srcloc !11
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i32 [ %32, %29 ], [ 0, %24 ]
  %35 = getelementptr inbounds %struct.omap3_scratchpad, ptr %2, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.omap3_scratchpad, ptr %2, i32 0, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.omap3_scratchpad, ptr %2, i32 0, i32 4
  store i32 44, ptr %37, align 4
  %38 = getelementptr inbounds %struct.omap3_scratchpad, ptr %2, i32 0, i32 5
  store i32 100, ptr %38, align 4
  call void @omap3_prm_save_scratchpad_contents(ptr noundef nonnull %3) #6
  %39 = getelementptr inbounds %struct.omap3_scratchpad_prcm_block, ptr %3, i32 0, i32 1
  call void @omap3_cm_save_scratchpad_contents(ptr noundef %39) #6
  %40 = getelementptr inbounds %struct.omap3_scratchpad_prcm_block, ptr %3, i32 0, i32 2
  store i32 0, ptr %40, align 4
  %41 = load ptr, ptr @omap2_sdrc_base, align 4
  %42 = getelementptr i8, ptr %41, i32 16
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !8
  %44 = trunc i32 %43 to i16
  store i16 %44, ptr %4, align 4
  %45 = load ptr, ptr @omap2_sdrc_base, align 4
  %46 = getelementptr i8, ptr %45, i32 64
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !8
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 1
  store i16 %48, ptr %49, align 2
  %50 = load ptr, ptr @omap2_sdrc_base, align 4
  %51 = getelementptr i8, ptr %50, i32 68
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !8
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 2
  store i16 %53, ptr %54, align 4
  %55 = load ptr, ptr @omap2_sdrc_base, align 4
  %56 = getelementptr i8, ptr %55, i32 76
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #6, !srcloc !8
  %58 = trunc i32 %57 to i16
  %59 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 3
  store i16 %58, ptr %59, align 2
  %60 = load ptr, ptr @omap2_sdrc_base, align 4
  %61 = getelementptr i8, ptr %60, i32 96
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !8
  %63 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 5
  store i32 0, ptr %64, align 4
  %65 = call i32 @omap_type() #6
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %76, label %67

67:                                               ; preds = %33
  %68 = call i32 @omap_rev() #6
  %69 = icmp ugt i32 %68, 875561779
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load ptr, ptr @omap2_sdrc_base, align 4
  %72 = getelementptr i8, ptr %71, i32 112
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #6, !srcloc !8
  %74 = and i32 %73, -16777009
  %75 = or i32 %74, 288
  br label %80

76:                                               ; preds = %67, %33
  %77 = load ptr, ptr @omap2_sdrc_base, align 4
  %78 = getelementptr i8, ptr %77, i32 112
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #6, !srcloc !8
  br label %80

80:                                               ; preds = %76, %70
  %81 = phi i32 [ %79, %76 ], [ %75, %70 ]
  %82 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 6
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 7
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr @omap2_sdrc_base, align 4
  %85 = getelementptr i8, ptr %84, i32 128
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #6, !srcloc !8
  %87 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 8
  store i32 %86, ptr %87, align 4
  %88 = load ptr, ptr @omap2_sdrc_base, align 4
  %89 = getelementptr i8, ptr %88, i32 132
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !8
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 9
  store i16 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 10
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 11
  store i16 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 12
  store i16 0, ptr %95, align 2
  %96 = load ptr, ptr @omap2_sdrc_base, align 4
  %97 = getelementptr i8, ptr %96, i32 156
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #6, !srcloc !8
  %99 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 13
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr @omap2_sdrc_base, align 4
  %101 = getelementptr i8, ptr %100, i32 160
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6, !srcloc !8
  %103 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 14
  store i32 %102, ptr %103, align 4
  %104 = load ptr, ptr @omap2_sdrc_base, align 4
  %105 = getelementptr i8, ptr %104, i32 164
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #6, !srcloc !8
  %107 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 15
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 16
  store i32 0, ptr %108, align 4
  %109 = load ptr, ptr @omap2_sdrc_base, align 4
  %110 = getelementptr i8, ptr %109, i32 176
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #6, !srcloc !8
  %112 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 17
  store i32 %111, ptr %112, align 4
  %113 = load ptr, ptr @omap2_sdrc_base, align 4
  %114 = getelementptr i8, ptr %113, i32 180
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #6, !srcloc !8
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 18
  store i16 %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 19
  store i16 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 20
  store i16 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 21
  store i16 0, ptr %120, align 2
  %121 = load ptr, ptr @omap2_sdrc_base, align 4
  %122 = getelementptr i8, ptr %121, i32 196
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #6, !srcloc !8
  %124 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 22
  store i32 %123, ptr %124, align 4
  %125 = load ptr, ptr @omap2_sdrc_base, align 4
  %126 = getelementptr i8, ptr %125, i32 200
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #6, !srcloc !8
  %128 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 23
  store i32 %127, ptr %128, align 4
  %129 = load ptr, ptr @omap2_sdrc_base, align 4
  %130 = getelementptr i8, ptr %129, i32 212
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #6, !srcloc !8
  %132 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 24
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %4, i32 0, i32 25
  %134 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap3_arm_context to i32), i32 -2130706432, i32 8454144) #8, !srcloc !11
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %133, i8 0, i64 12, i1 false)
  store i32 %134, ptr %1, align 4
  call void @mmiocpy(ptr noundef nonnull inttoptr (i32 -100652784 to ptr), ptr noundef nonnull %2, i32 noundef 24) #6
  %135 = load i32, ptr %37, align 4
  %136 = getelementptr i8, ptr inttoptr (i32 -100652784 to ptr), i32 %135
  call void @mmiocpy(ptr noundef %136, ptr noundef nonnull %3, i32 noundef 56) #6
  %137 = load i32, ptr %38, align 4
  %138 = getelementptr i8, ptr inttoptr (i32 -100652784 to ptr), i32 %137
  call void @mmiocpy(ptr noundef %138, ptr noundef nonnull %4, i32 noundef 88) #6
  %139 = load i32, ptr %38, align 4
  %140 = getelementptr i8, ptr inttoptr (i32 -100652784 to ptr), i32 %139
  %141 = getelementptr i8, ptr %140, i32 88
  call void @mmiocpy(ptr noundef %141, ptr noundef nonnull %1, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_restore_3630() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_restore() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_restore_es3() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_prm_save_scratchpad_contents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_cm_save_scratchpad_contents(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_control_save_context() local_unnamed_addr #0 {
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !8
  store i32 %3, ptr @control_context, align 4
  %4 = load ptr, ptr @omap2_ctrl_base, align 4
  %5 = getelementptr i8, ptr %4, i32 628
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  store i32 %6, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 1), align 4
  %7 = load ptr, ptr @omap2_ctrl_base, align 4
  %8 = getelementptr i8, ptr %7, i32 632
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !8
  store i32 %9, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 2), align 4
  %10 = load ptr, ptr @omap2_ctrl_base, align 4
  %11 = getelementptr i8, ptr %10, i32 636
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  store i32 %12, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 3), align 4
  %13 = load ptr, ptr @omap2_ctrl_base, align 4
  %14 = getelementptr i8, ptr %13, i32 656
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  store i32 %15, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 4), align 4
  %16 = load ptr, ptr @omap2_ctrl_base, align 4
  %17 = getelementptr i8, ptr %16, i32 660
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  store i32 %18, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 5), align 4
  %19 = load ptr, ptr @omap2_ctrl_base, align 4
  %20 = getelementptr i8, ptr %19, i32 664
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  store i32 %21, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 6), align 4
  %22 = load ptr, ptr @omap2_ctrl_base, align 4
  %23 = getelementptr i8, ptr %22, i32 668
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !8
  store i32 %24, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 7), align 4
  %25 = load ptr, ptr @omap2_ctrl_base, align 4
  %26 = getelementptr i8, ptr %25, i32 672
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  store i32 %27, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 8), align 4
  %28 = load ptr, ptr @omap2_ctrl_base, align 4
  %29 = getelementptr i8, ptr %28, i32 676
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !8
  store i32 %30, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 9), align 4
  %31 = load ptr, ptr @omap2_ctrl_base, align 4
  %32 = getelementptr i8, ptr %31, i32 688
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !8
  store i32 %33, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 10), align 4
  %34 = load ptr, ptr @omap2_ctrl_base, align 4
  %35 = getelementptr i8, ptr %34, i32 728
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !8
  store i32 %36, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 11), align 4
  %37 = load ptr, ptr @omap2_ctrl_base, align 4
  %38 = getelementptr i8, ptr %37, i32 732
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !8
  store i32 %39, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 12), align 4
  %40 = load ptr, ptr @omap2_ctrl_base, align 4
  %41 = getelementptr i8, ptr %40, i32 1024
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !8
  store i32 %42, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 13), align 4
  %43 = load ptr, ptr @omap2_ctrl_base, align 4
  %44 = getelementptr i8, ptr %43, i32 1028
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !8
  store i32 %45, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 14), align 4
  %46 = load ptr, ptr @omap2_ctrl_base, align 4
  %47 = getelementptr i8, ptr %46, i32 2652
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !8
  store i32 %48, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 15), align 4
  %49 = load ptr, ptr @omap2_ctrl_base, align 4
  %50 = getelementptr i8, ptr %49, i32 1056
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !8
  store i32 %51, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 16), align 4
  %52 = load ptr, ptr @omap2_ctrl_base, align 4
  %53 = getelementptr i8, ptr %52, i32 1056
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !8
  store i32 %54, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 17), align 4
  %55 = load ptr, ptr @omap2_ctrl_base, align 4
  %56 = getelementptr i8, ptr %55, i32 1060
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #6, !srcloc !8
  store i32 %57, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 18), align 4
  %58 = load ptr, ptr @omap2_ctrl_base, align 4
  %59 = getelementptr i8, ptr %58, i32 1060
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !8
  store i32 %60, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 19), align 4
  %61 = load ptr, ptr @omap2_ctrl_base, align 4
  %62 = getelementptr i8, ptr %61, i32 1064
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !8
  store i32 %63, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 20), align 4
  %64 = load ptr, ptr @omap2_ctrl_base, align 4
  %65 = getelementptr i8, ptr %64, i32 1064
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !8
  store i32 %66, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 21), align 4
  %67 = load ptr, ptr @omap2_ctrl_base, align 4
  %68 = getelementptr i8, ptr %67, i32 1068
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !8
  store i32 %69, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 22), align 4
  %70 = load ptr, ptr @omap2_ctrl_base, align 4
  %71 = getelementptr i8, ptr %70, i32 1068
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #6, !srcloc !8
  store i32 %72, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 23), align 4
  %73 = load ptr, ptr @omap2_ctrl_base, align 4
  %74 = getelementptr i8, ptr %73, i32 1072
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #6, !srcloc !8
  store i32 %75, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 24), align 4
  %76 = load ptr, ptr @omap2_ctrl_base, align 4
  %77 = getelementptr i8, ptr %76, i32 1092
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #6, !srcloc !8
  store i32 %78, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 25), align 4
  %79 = load ptr, ptr @omap2_ctrl_base, align 4
  %80 = getelementptr i8, ptr %79, i32 1096
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #6, !srcloc !8
  store i32 %81, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 26), align 4
  %82 = load ptr, ptr @omap2_ctrl_base, align 4
  %83 = getelementptr i8, ptr %82, i32 1104
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #6, !srcloc !8
  store i32 %84, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 27), align 4
  %85 = load ptr, ptr @omap2_ctrl_base, align 4
  %86 = getelementptr i8, ptr %85, i32 1108
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #6, !srcloc !8
  store i32 %87, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 28), align 4
  %88 = load ptr, ptr @omap2_ctrl_base, align 4
  %89 = getelementptr i8, ptr %88, i32 1112
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !8
  store i32 %90, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 29), align 4
  %91 = load ptr, ptr @omap2_ctrl_base, align 4
  %92 = getelementptr i8, ptr %91, i32 1116
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !8
  store i32 %93, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 30), align 4
  %94 = load ptr, ptr @omap2_ctrl_base, align 4
  %95 = getelementptr i8, ptr %94, i32 1312
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #6, !srcloc !8
  store i32 %96, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 31), align 4
  %97 = load ptr, ptr @omap2_ctrl_base, align 4
  %98 = getelementptr i8, ptr %97, i32 1316
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !8
  store i32 %99, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 32), align 4
  %100 = load ptr, ptr @omap2_ctrl_base, align 4
  %101 = getelementptr i8, ptr %100, i32 1320
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6, !srcloc !8
  store i32 %102, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 33), align 4
  %103 = load ptr, ptr @omap2_ctrl_base, align 4
  %104 = getelementptr i8, ptr %103, i32 1328
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #6, !srcloc !8
  store i32 %105, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 34), align 4
  %106 = load ptr, ptr @omap2_ctrl_base, align 4
  %107 = getelementptr i8, ptr %106, i32 1332
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #6, !srcloc !8
  store i32 %108, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 35), align 4
  %109 = load ptr, ptr @omap2_ctrl_base, align 4
  %110 = getelementptr i8, ptr %109, i32 432
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #6, !srcloc !8
  store i32 %111, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 36), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_control_restore_context() local_unnamed_addr #0 {
  %1 = load i32, ptr @control_context, align 4
  %2 = load ptr, ptr @omap2_ctrl_base, align 4
  %3 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #6, !srcloc !9
  %4 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 1), align 4
  %5 = load ptr, ptr @omap2_ctrl_base, align 4
  %6 = getelementptr i8, ptr %5, i32 628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !9
  %7 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 2), align 4
  %8 = load ptr, ptr @omap2_ctrl_base, align 4
  %9 = getelementptr i8, ptr %8, i32 632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !9
  %10 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 3), align 4
  %11 = load ptr, ptr @omap2_ctrl_base, align 4
  %12 = getelementptr i8, ptr %11, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  %13 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 4), align 4
  %14 = load ptr, ptr @omap2_ctrl_base, align 4
  %15 = getelementptr i8, ptr %14, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !9
  %16 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 5), align 4
  %17 = load ptr, ptr @omap2_ctrl_base, align 4
  %18 = getelementptr i8, ptr %17, i32 660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !9
  %19 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 6), align 4
  %20 = load ptr, ptr @omap2_ctrl_base, align 4
  %21 = getelementptr i8, ptr %20, i32 664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !9
  %22 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 7), align 4
  %23 = load ptr, ptr @omap2_ctrl_base, align 4
  %24 = getelementptr i8, ptr %23, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !9
  %25 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 8), align 4
  %26 = load ptr, ptr @omap2_ctrl_base, align 4
  %27 = getelementptr i8, ptr %26, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !9
  %28 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 9), align 4
  %29 = load ptr, ptr @omap2_ctrl_base, align 4
  %30 = getelementptr i8, ptr %29, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !9
  %31 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 10), align 4
  %32 = load ptr, ptr @omap2_ctrl_base, align 4
  %33 = getelementptr i8, ptr %32, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !9
  %34 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 11), align 4
  %35 = load ptr, ptr @omap2_ctrl_base, align 4
  %36 = getelementptr i8, ptr %35, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #6, !srcloc !9
  %37 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 12), align 4
  %38 = load ptr, ptr @omap2_ctrl_base, align 4
  %39 = getelementptr i8, ptr %38, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !9
  %40 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 13), align 4
  %41 = load ptr, ptr @omap2_ctrl_base, align 4
  %42 = getelementptr i8, ptr %41, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !9
  %43 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 14), align 4
  %44 = load ptr, ptr @omap2_ctrl_base, align 4
  %45 = getelementptr i8, ptr %44, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !9
  %46 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 15), align 4
  %47 = load ptr, ptr @omap2_ctrl_base, align 4
  %48 = getelementptr i8, ptr %47, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #6, !srcloc !9
  %49 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 16), align 4
  %50 = load ptr, ptr @omap2_ctrl_base, align 4
  %51 = getelementptr i8, ptr %50, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #6, !srcloc !9
  %52 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 17), align 4
  %53 = load ptr, ptr @omap2_ctrl_base, align 4
  %54 = getelementptr i8, ptr %53, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #6, !srcloc !9
  %55 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 18), align 4
  %56 = load ptr, ptr @omap2_ctrl_base, align 4
  %57 = getelementptr i8, ptr %56, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #6, !srcloc !9
  %58 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 19), align 4
  %59 = load ptr, ptr @omap2_ctrl_base, align 4
  %60 = getelementptr i8, ptr %59, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !9
  %61 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 20), align 4
  %62 = load ptr, ptr @omap2_ctrl_base, align 4
  %63 = getelementptr i8, ptr %62, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #6, !srcloc !9
  %64 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 21), align 4
  %65 = load ptr, ptr @omap2_ctrl_base, align 4
  %66 = getelementptr i8, ptr %65, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #6, !srcloc !9
  %67 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 22), align 4
  %68 = load ptr, ptr @omap2_ctrl_base, align 4
  %69 = getelementptr i8, ptr %68, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #6, !srcloc !9
  %70 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 23), align 4
  %71 = load ptr, ptr @omap2_ctrl_base, align 4
  %72 = getelementptr i8, ptr %71, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #6, !srcloc !9
  %73 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 24), align 4
  %74 = load ptr, ptr @omap2_ctrl_base, align 4
  %75 = getelementptr i8, ptr %74, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #6, !srcloc !9
  %76 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 25), align 4
  %77 = load ptr, ptr @omap2_ctrl_base, align 4
  %78 = getelementptr i8, ptr %77, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #6, !srcloc !9
  %79 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 26), align 4
  %80 = load ptr, ptr @omap2_ctrl_base, align 4
  %81 = getelementptr i8, ptr %80, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #6, !srcloc !9
  %82 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 27), align 4
  %83 = load ptr, ptr @omap2_ctrl_base, align 4
  %84 = getelementptr i8, ptr %83, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #6, !srcloc !9
  %85 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 28), align 4
  %86 = load ptr, ptr @omap2_ctrl_base, align 4
  %87 = getelementptr i8, ptr %86, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #6, !srcloc !9
  %88 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 29), align 4
  %89 = load ptr, ptr @omap2_ctrl_base, align 4
  %90 = getelementptr i8, ptr %89, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #6, !srcloc !9
  %91 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 30), align 4
  %92 = load ptr, ptr @omap2_ctrl_base, align 4
  %93 = getelementptr i8, ptr %92, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #6, !srcloc !9
  %94 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 31), align 4
  %95 = load ptr, ptr @omap2_ctrl_base, align 4
  %96 = getelementptr i8, ptr %95, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #6, !srcloc !9
  %97 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 32), align 4
  %98 = load ptr, ptr @omap2_ctrl_base, align 4
  %99 = getelementptr i8, ptr %98, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #6, !srcloc !9
  %100 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 33), align 4
  %101 = load ptr, ptr @omap2_ctrl_base, align 4
  %102 = getelementptr i8, ptr %101, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #6, !srcloc !9
  %103 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 34), align 4
  %104 = load ptr, ptr @omap2_ctrl_base, align 4
  %105 = getelementptr i8, ptr %104, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #6, !srcloc !9
  %106 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 35), align 4
  %107 = load ptr, ptr @omap2_ctrl_base, align 4
  %108 = getelementptr i8, ptr %107, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #6, !srcloc !9
  %109 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 36), align 4
  %110 = load ptr, ptr @omap2_ctrl_base, align 4
  %111 = getelementptr i8, ptr %110, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3630_ctrl_disable_rta() local_unnamed_addr #0 {
  %1 = tail call i32 @omap_rev() #6
  %2 = and i32 %1, -1048576
  %3 = icmp eq i32 %2, 909115392
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @omap2_ctrl_base, align 4
  %6 = getelementptr i8, ptr %5, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !9
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_ctrl_save_padconf() local_unnamed_addr #0 {
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %2 = getelementptr i8, ptr %1, i32 624
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !8
  %4 = or i32 %3, 2
  %5 = load ptr, ptr @omap2_ctrl_base, align 4
  %6 = getelementptr i8, ptr %5, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !9
  %7 = load ptr, ptr @omap2_ctrl_base, align 4
  %8 = getelementptr i8, ptr %7, i32 756
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %12, %0
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = load ptr, ptr @omap2_ctrl_base, align 4
  %15 = getelementptr i8, ptr %14, i32 756
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %12, label %19

19:                                               ; preds = %12, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3_ctrl_init() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #6, !srcloc !9
  %3 = load ptr, ptr @omap2_ctrl_base, align 4
  %4 = getelementptr i8, ptr %3, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #6, !srcloc !9
  tail call fastcc void @omap3_ctrl_setup_d2d_padconf() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_ctrl_setup_d2d_padconf() unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %2 = getelementptr i8, ptr %1, i32 592
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !8
  %4 = load ptr, ptr @omap2_ctrl_base, align 4
  %5 = getelementptr i8, ptr %4, i32 592
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  %7 = and i32 %6, -65536
  %8 = and i32 %3, 65511
  %9 = or i32 %8, %7
  %10 = or i32 %9, 24
  %11 = load ptr, ptr @omap2_ctrl_base, align 4
  %12 = getelementptr i8, ptr %11, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  %13 = load ptr, ptr @omap2_ctrl_base, align 4
  %14 = getelementptr i8, ptr %13, i32 596
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  %16 = load ptr, ptr @omap2_ctrl_base, align 4
  %17 = getelementptr i8, ptr %16, i32 596
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  %19 = and i32 %18, -65536
  %20 = and i32 %15, 65511
  %21 = or i32 %20, %19
  %22 = or i32 %21, 24
  %23 = load ptr, ptr @omap2_ctrl_base, align 4
  %24 = getelementptr i8, ptr %23, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap2_control_base_init() local_unnamed_addr #5 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  store ptr null, ptr %1, align 4, !annotation !10
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %1) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %15, %0
  %5 = phi ptr [ %17, %15 ], [ %2, %0 ]
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = call ptr @of_iomap(ptr noundef nonnull %5, i32 noundef 0) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %8, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store ptr %9, ptr @omap2_ctrl_base, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = getelementptr inbounds %struct.control_init_data, ptr %8, i32 0, i32 1
  store ptr %9, ptr %16, align 4
  %17 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %5, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %1) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4

19:                                               ; preds = %15, %4, %0
  %20 = phi i32 [ 0, %0 ], [ 0, %15 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_control_init() local_unnamed_addr #5 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  store ptr null, ptr %1, align 4, !annotation !10
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %1) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %29, %0
  %5 = phi ptr [ %30, %29 ], [ %2, %0 ]
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = call ptr @of_get_child_by_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %9) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %38

16:                                               ; preds = %11
  %17 = call ptr @of_get_child_by_name(ptr noundef nonnull %9, ptr noundef nonnull @.str.2) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4
  %21 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %9, i32 noundef %20, ptr noundef %12, ptr noundef null) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %38

23:                                               ; preds = %4
  %24 = load i32, ptr %8, align 4
  %25 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %5, i32 noundef %24, ptr noundef null, ptr noundef %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23, %19, %16
  %30 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %5, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %1) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %4

32:                                               ; preds = %29, %0
  %33 = call i32 @omap_rev() #6
  %34 = and i32 %33, -16777216
  %35 = icmp eq i32 %34, 1124073472
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  store ptr @cpu_notifier, ptr @omap_control_init.nb, align 4
  %37 = call i32 @cpu_pm_register_notifier(ptr noundef nonnull @omap_control_init.nb) #6
  br label %38

38:                                               ; preds = %36, %32, %23, %19, %14
  %39 = phi i32 [ %15, %14 ], [ 0, %36 ], [ 0, %32 ], [ %27, %23 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_provider_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %32 [
    i32 3, label %4
    i32 5, label %18
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @enable_off_mode, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ %16, %7 ], [ 0, %4 ]
  %9 = getelementptr [55 x i32], ptr @am43xx_control_reg_offsets, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65532
  %12 = load ptr, ptr @omap2_ctrl_base, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  %15 = getelementptr [55 x i32], ptr @am33xx_control_vals, i32 0, i32 %8
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 55
  br i1 %17, label %32, label %7

18:                                               ; preds = %3
  %19 = load i32, ptr @enable_off_mode, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ %30, %21 ], [ 0, %18 ]
  %23 = getelementptr [55 x i32], ptr @am33xx_control_vals, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [55 x i32], ptr @am43xx_control_reg_offsets, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65532
  %28 = load ptr, ptr @omap2_ctrl_base, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #6, !srcloc !9
  %30 = add nuw nsw i32 %22, 1
  %31 = icmp eq i32 %30, 55
  br i1 %31, label %32, label %21

32:                                               ; preds = %21, %18, %7, %4, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3_control_legacy_iomap_init() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  tail call void @omap2_clk_legacy_provider_init(i32 noundef 3, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_legacy_provider_init(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { cold }

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
!8 = !{i64 969673}
!9 = !{i64 969255}
!10 = !{!"auto-init"}
!11 = !{i64 2148495636, i64 2148495659, i64 2148495691, i64 2148495723, i64 2148495761, i64 2148495791}
