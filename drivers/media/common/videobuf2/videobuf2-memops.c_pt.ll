; ModuleID = '/llk/IR/drivers/media/common/videobuf2/videobuf2-memops.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-memops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_create_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_create_framevec\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_create_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_destroy_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_destroy_framevec\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_destroy_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_common_vm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_common_vm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_common_vm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.63, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }

@__kstrtab_vb2_create_framevec = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_create_framevec = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_create_framevec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_create_framevec to i32), ptr @__kstrtab_vb2_create_framevec, ptr @__kstrtabns_vb2_create_framevec }, section "___ksymtab+vb2_create_framevec", align 4
@__kstrtab_vb2_destroy_framevec = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_destroy_framevec = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_destroy_framevec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_destroy_framevec to i32), ptr @__kstrtab_vb2_destroy_framevec, ptr @__kstrtabns_vb2_destroy_framevec }, section "___ksymtab+vb2_destroy_framevec", align 4
@vb2_common_vm_ops = dso_local constant %struct.vm_operations_struct { ptr @vb2_common_vm_open, ptr @vb2_common_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_vb2_common_vm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_common_vm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_common_vm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_common_vm_ops to i32), ptr @__kstrtab_vb2_common_vm_ops, ptr @__kstrtabns_vb2_common_vm_ops }, section "___ksymtab_gpl+vb2_common_vm_ops", align 4
@__UNIQUE_ID_description228 = internal constant [58 x i8] c"description=common memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [39 x i8] c"author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_vb2_common_vm_ops, ptr @__ksymtab_vb2_create_framevec, ptr @__ksymtab_vb2_destroy_framevec], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vb2_create_framevec(i32 noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %0, 12
  %4 = add i32 %0, -1
  %5 = add i32 %4, %1
  %6 = lshr i32 %5, 12
  %7 = sub nsw i32 %6, %3
  %8 = add nsw i32 %7, 1
  %9 = tail call ptr @frame_vector_create(i32 noundef %8) #2
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = and i32 %0, -4096
  %13 = tail call i32 @get_vaddr_frames(i32 noundef %12, i32 noundef %8, ptr noundef nonnull %9) #2
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %13, %8
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  tail call void @put_vaddr_frames(ptr noundef nonnull %9) #2
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ %13, %11 ], [ -14, %17 ]
  tail call void @frame_vector_destroy(ptr noundef nonnull %9) #2
  %20 = inttoptr i32 %19 to ptr
  br label %21

21:                                               ; preds = %18, %15, %2
  %22 = phi ptr [ %20, %18 ], [ %9, %15 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @frame_vector_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_vaddr_frames(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_vaddr_frames(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @frame_vector_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vb2_destroy_framevec(ptr noundef %0) #0 {
  tail call void @put_vaddr_frames(ptr noundef %0) #2
  tail call void @frame_vector_destroy(ptr noundef %0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_common_vm_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #2, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #2, !srcloc !9
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !10

8:                                                ; preds = %1
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %8, %1
  %13 = phi i32 [ 2, %1 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #2
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_common_vm_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vb2_vmarea_handler, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vb2_vmarea_handler, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void %5(ptr noundef %7) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 757059, i64 2148247030, i64 2148247056, i64 2148247103, i64 2148247125, i64 2148247153, i64 2148247173}
!9 = !{i64 2148259903, i64 2148259935, i64 2148259964, i64 2148259998, i64 2148260029, i64 2148260052}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
