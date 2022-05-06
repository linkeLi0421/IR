; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/shmem.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/shmem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_shared_mem = type { i32, i32, [2 x i32], i32, i32, i32, [0 x i8] }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmem_tx_prepare(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11, !prof !10

7:                                                ; preds = %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %7, label %11

11:                                               ; preds = %7, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #3, !srcloc !14
  %12 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 5
  %14 = load i8, ptr %13, align 4, !range !15
  %15 = xor i8 %14, 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #3, !srcloc !14
  %18 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 2
  %19 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 4
  %22 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #3, !srcloc !14
  %23 = load i8, ptr %12, align 4
  %24 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 3
  %27 = load i16, ptr %26, align 4
  %28 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %25 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = and i32 %31, 768
  %33 = zext i8 %23 to i32
  %34 = or i32 %32, %33
  %35 = zext i16 %27 to i32
  %36 = shl i32 %35, 18
  %37 = and i32 %36, 268173312
  %38 = or i32 %34, %37
  %39 = zext i8 %29 to i32
  %40 = shl nuw nsw i32 %39, 10
  %41 = or i32 %38, %40
  %42 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #3, !srcloc !14
  %43 = load ptr, ptr %18, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %11
  %46 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %19, align 4
  tail call void @mmiocpy(ptr noundef %46, ptr noundef nonnull %43, i32 noundef %47) #3
  br label %48

48:                                               ; preds = %45, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_read_header(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 5
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmem_fetch_response(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %5 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 4
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %11 = add i32 %10, -8
  %12 = tail call i32 @llvm.umin.i32(i32 %8, i32 %11)
  store i32 %12, ptr %7, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr %struct.scmi_shared_mem, ptr %0, i32 1, i32 1
  tail call void @mmiocpy(ptr noundef %13, ptr noundef %14, i32 noundef %12) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmem_fetch_notification(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = add i32 %5, -4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %1)
  %8 = getelementptr inbounds %struct.scmi_xfer, ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %struct.scmi_xfer, ptr %2, i32 0, i32 3, i32 1
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 6
  tail call void @mmiocpy(ptr noundef %10, ptr noundef %11, i32 noundef %7) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmem_clear_channel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @shmem_poll_done(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %5 = lshr i32 %4, 18
  %6 = and i32 %5, 1023
  %7 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.scmi_shared_mem, ptr %0, i32 0, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ %15, %11 ], [ false, %2 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 362332}
!9 = !{i64 2148573932}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151562861}
!12 = !{i64 2151562703}
!13 = !{i64 2148575154}
!14 = !{i64 361914}
!15 = !{i8 0, i8 2}
