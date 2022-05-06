; ModuleID = '/llk/IR/arch/arm/mm/fault-armv.c_pt.bc'
source_filename = "../arch/arm/mm/fault-armv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.page = type { i32, %union.anon, %union.anon.58, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.58 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"\016CPU: Testing write buffer coherency: \00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"enabling work-around\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unable to map memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unable to grab page\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\01cfailed, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\01cok\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @check_writebuffer_bugs() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  %3 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  store ptr %3, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = and i32 %6, -573
  %8 = or i32 %7, 516
  %9 = call ptr @vmap(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1, i32 noundef %8) #4
  %10 = call ptr @vmap(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1, i32 noundef %8) #4
  %11 = icmp ne ptr %9, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call fastcc i32 @check_writebuffer(ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ 1, %5 ]
  %18 = phi ptr [ @.str.1, %14 ], [ @.str.2, %5 ]
  call void @vunmap(ptr noundef %9) #4
  call void @vunmap(ptr noundef %10) #4
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !8

24:                                               ; preds = %16
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %16
  %27 = ptrtoint ptr %19 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #4, !srcloc !10
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #4, !srcloc !11
  %33 = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @__put_page(ptr noundef %30) #4
  br label %36

36:                                               ; preds = %35, %28
  %37 = icmp eq i32 %17, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %36, %0
  %39 = phi ptr [ %18, %36 ], [ @.str.3, %0 ]
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %39) #5
  br label %43

41:                                               ; preds = %36
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #5
  br label %43

43:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @check_writebuffer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  store i32 1, ptr %0, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  store i32 0, ptr %1, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %3 = load i32, ptr %0, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !18
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { cold }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148187083}
!10 = !{i64 521576, i64 2148023142, i64 2148023168, i64 2148023215, i64 2148023237, i64 2148023265, i64 2148023285}
!11 = !{i64 2148089445, i64 2148089477, i64 2148089506, i64 2148089540, i64 2148089571, i64 2148089594}
!12 = !{i64 2148187286}
!13 = !{i64 550758}
!14 = !{i64 2152479349}
!15 = !{i64 2152479463}
!16 = !{i64 2152479577}
!17 = !{i64 2152479691}
!18 = !{i64 550568}
