; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.131, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.131 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.128, %struct.anon.128, %struct.anon.128, %struct.anon.129, %struct.anon.130, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.126 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.125 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.125 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.126 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.128 = type { i32, i32 }
%struct.anon.129 = type { i32, i32, i32 }
%struct.anon.130 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvc37e_window_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }

@.str = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@gv100_disp_wndw_mthd = dso_local constant { ptr, i32, i32, [2 x %struct.anon.0] } { ptr @.str, i32 4096, i32 2048, [2 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gv100_disp_wndw_mthd_base }, %struct.anon.0 zeroinitializer] }, align 4
@gv100_disp_wndw = dso_local constant %struct.nv50_disp_chan_func { ptr @gv100_disp_dmac_init, ptr @gv100_disp_dmac_fini, ptr @gv100_disp_wndw_intr, ptr @gv100_disp_chan_user, ptr @gv100_disp_dmac_bind }, align 4
@gv100_disp_wndw_mthd_base = internal constant { i32, i32, [82 x %struct.anon] } { i32 0, i32 0, [82 x %struct.anon] [%struct.anon { i32 512, i32 6881792, ptr null }, %struct.anon { i32 524, i32 6881804, ptr null }, %struct.anon { i32 528, i32 6881808, ptr null }, %struct.anon { i32 532, i32 6881812, ptr null }, %struct.anon { i32 536, i32 6881816, ptr null }, %struct.anon { i32 540, i32 6881820, ptr null }, %struct.anon { i32 544, i32 6881824, ptr null }, %struct.anon { i32 548, i32 6881828, ptr null }, %struct.anon { i32 552, i32 6881832, ptr null }, %struct.anon { i32 556, i32 6881836, ptr null }, %struct.anon { i32 560, i32 6881840, ptr null }, %struct.anon { i32 564, i32 6881844, ptr null }, %struct.anon { i32 568, i32 6881848, ptr null }, %struct.anon { i32 576, i32 6881856, ptr null }, %struct.anon { i32 580, i32 6881860, ptr null }, %struct.anon { i32 584, i32 6881864, ptr null }, %struct.anon { i32 588, i32 6881868, ptr null }, %struct.anon { i32 592, i32 6881872, ptr null }, %struct.anon { i32 596, i32 6881876, ptr null }, %struct.anon { i32 608, i32 6881888, ptr null }, %struct.anon { i32 612, i32 6881892, ptr null }, %struct.anon { i32 616, i32 6881896, ptr null }, %struct.anon { i32 620, i32 6881900, ptr null }, %struct.anon { i32 624, i32 6881904, ptr null }, %struct.anon { i32 628, i32 6881908, ptr null }, %struct.anon { i32 640, i32 6881920, ptr null }, %struct.anon { i32 644, i32 6881924, ptr null }, %struct.anon { i32 648, i32 6881928, ptr null }, %struct.anon { i32 652, i32 6881932, ptr null }, %struct.anon { i32 656, i32 6881936, ptr null }, %struct.anon { i32 664, i32 6881944, ptr null }, %struct.anon { i32 668, i32 6881948, ptr null }, %struct.anon { i32 672, i32 6881952, ptr null }, %struct.anon { i32 676, i32 6881956, ptr null }, %struct.anon { i32 680, i32 6881960, ptr null }, %struct.anon { i32 684, i32 6881964, ptr null }, %struct.anon { i32 688, i32 6881968, ptr null }, %struct.anon { i32 692, i32 6881972, ptr null }, %struct.anon { i32 696, i32 6881976, ptr null }, %struct.anon { i32 700, i32 6881980, ptr null }, %struct.anon { i32 704, i32 6881984, ptr null }, %struct.anon { i32 708, i32 6881988, ptr null }, %struct.anon { i32 712, i32 6881992, ptr null }, %struct.anon { i32 716, i32 6881996, ptr null }, %struct.anon { i32 720, i32 6882000, ptr null }, %struct.anon { i32 724, i32 6882004, ptr null }, %struct.anon { i32 728, i32 6882008, ptr null }, %struct.anon { i32 732, i32 6882012, ptr null }, %struct.anon { i32 736, i32 6882016, ptr null }, %struct.anon { i32 740, i32 6882020, ptr null }, %struct.anon { i32 744, i32 6882024, ptr null }, %struct.anon { i32 748, i32 6882028, ptr null }, %struct.anon { i32 752, i32 6882032, ptr null }, %struct.anon { i32 756, i32 6882036, ptr null }, %struct.anon { i32 760, i32 6882040, ptr null }, %struct.anon { i32 764, i32 6882044, ptr null }, %struct.anon { i32 768, i32 6882048, ptr null }, %struct.anon { i32 772, i32 6882052, ptr null }, %struct.anon { i32 776, i32 6882056, ptr null }, %struct.anon { i32 784, i32 6882064, ptr null }, %struct.anon { i32 788, i32 6882068, ptr null }, %struct.anon { i32 792, i32 6882072, ptr null }, %struct.anon { i32 796, i32 6882076, ptr null }, %struct.anon { i32 800, i32 6882080, ptr null }, %struct.anon { i32 804, i32 6882084, ptr null }, %struct.anon { i32 808, i32 6882088, ptr null }, %struct.anon { i32 812, i32 6882092, ptr null }, %struct.anon { i32 828, i32 6882108, ptr null }, %struct.anon { i32 832, i32 6882112, ptr null }, %struct.anon { i32 836, i32 6882116, ptr null }, %struct.anon { i32 840, i32 6882120, ptr null }, %struct.anon { i32 844, i32 6882124, ptr null }, %struct.anon { i32 848, i32 6882128, ptr null }, %struct.anon { i32 852, i32 6882132, ptr null }, %struct.anon { i32 856, i32 6882136, ptr null }, %struct.anon { i32 868, i32 6882148, ptr null }, %struct.anon { i32 872, i32 6882152, ptr null }, %struct.anon { i32 876, i32 6882156, ptr null }, %struct.anon { i32 880, i32 6882160, ptr null }, %struct.anon { i32 884, i32 6882164, ptr null }, %struct.anon { i32 896, i32 6882176, ptr null }, %struct.anon zeroinitializer] }, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create window channel dma size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [92 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create window channel dma vers %d pushbuf %016llx index %d\0A\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_dmac_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_dmac_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_disp_wndw_intr(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %8
  %10 = select i1 %1, i32 %9, i32 0
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 6364580
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %15 = xor i32 %9, -1
  %16 = and i32 %14, %15
  %17 = or i32 %16, %10
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 6364580
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #3, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gv100_disp_chan_user(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_dmac_bind(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_wndw_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %2) #4
  br label %20

20:                                               ; preds = %13, %5
  %21 = icmp ugt i32 %2, 15
  br i1 %21, label %22, label %58

22:                                               ; preds = %20
  %23 = load i8, ptr %1, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = icmp eq i32 %2, 16
  br i1 %26, label %27, label %58

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp ugt i32 %30, 4
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %1, i32 0, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %1, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, i64 noundef %39, i32 noundef %42) #4
  br label %44

44:                                               ; preds = %32, %27
  %45 = getelementptr inbounds %struct.nv50_disp, ptr %3, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %1, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %46
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %1, i32 0, i32 3
  %55 = load i64, ptr %54, align 8
  %56 = add nuw nsw i32 %49, 1
  %57 = tail call i32 @nv50_disp_dmac_new_(ptr noundef nonnull @gv100_disp_wndw, ptr noundef nonnull @gv100_disp_wndw_mthd, ptr noundef %3, i32 noundef %56, i32 noundef %49, i64 noundef %55, ptr noundef %0, ptr noundef %4) #3
  br label %58

58:                                               ; preds = %53, %44, %25, %22, %20
  %59 = phi i32 [ %57, %53 ], [ -22, %44 ], [ -38, %20 ], [ -38, %22 ], [ -7, %25 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_dmac_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 3944591}
!9 = !{i64 2151484044}
!10 = !{i64 2151485266}
!11 = !{i64 3944173}
