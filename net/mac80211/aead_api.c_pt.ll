; ModuleID = '/llk/IR/net/mac80211/aead_api.c_pt.bc'
source_filename = "../net/mac80211/aead_api.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.0, %union.anon.59, %struct.atomic_t }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.59 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aead_encrypt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x %struct.scatterlist], align 4
  %9 = load i32, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %8, i8 0, i32 60, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 64
  %13 = add i32 %12, %3
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 2848) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %74, label %16

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %14, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %2, i32 %3, i1 false)
  call void @sg_init_table(ptr noundef nonnull %8, i32 noundef 3) #6
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %17 to i32
  %20 = add i32 %19, 1073741824
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = ptrtoint ptr %22 to i32
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %16
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

27:                                               ; preds = %16
  %28 = and i32 %19, 4095
  %29 = load i32, ptr %8, align 4
  %30 = and i32 %29, 3
  %31 = or i32 %30, %23
  store i32 %31, ptr %8, align 4
  %32 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 1
  store i32 %28, ptr %32, align 4
  %33 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 2
  store i32 %3, ptr %33, align 4
  %34 = ptrtoint ptr %4 to i32
  %35 = add i32 %34, 1073741824
  %36 = lshr i32 %35, 12
  %37 = getelementptr %struct.page, ptr %18, i32 %36
  %38 = ptrtoint ptr %37 to i32
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %27
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

42:                                               ; preds = %27
  %43 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 1
  %44 = and i32 %34, 4095
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %45, 3
  %47 = or i32 %46, %38
  store i32 %47, ptr %43, align 4
  %48 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 1, i32 1
  store i32 %44, ptr %48, align 4
  %49 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 1, i32 2
  store i32 %5, ptr %49, align 4
  %50 = ptrtoint ptr %6 to i32
  %51 = add i32 %50, 1073741824
  %52 = lshr i32 %51, 12
  %53 = getelementptr %struct.page, ptr %18, i32 %52
  %54 = ptrtoint ptr %53 to i32
  %55 = and i32 %54, 3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57, !prof !9

57:                                               ; preds = %42
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

58:                                               ; preds = %42
  %59 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 2
  %60 = and i32 %50, 4095
  %61 = load i32, ptr %59, align 4
  %62 = and i32 %61, 3
  %63 = or i32 %62, %54
  store i32 %63, ptr %59, align 4
  %64 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 2, i32 1
  store i32 %60, ptr %64, align 4
  %65 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 2, i32 2
  store i32 %9, ptr %65, align 4
  %66 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %67 = getelementptr inbounds %struct.crypto_async_request, ptr %14, i32 0, i32 3
  store ptr %66, ptr %67, align 16
  %68 = getelementptr inbounds %struct.aead_request, ptr %14, i32 0, i32 4
  store ptr %8, ptr %68, align 4
  %69 = getelementptr inbounds %struct.aead_request, ptr %14, i32 0, i32 5
  store ptr %8, ptr %69, align 8
  %70 = getelementptr inbounds %struct.aead_request, ptr %14, i32 0, i32 2
  store i32 %5, ptr %70, align 4
  %71 = getelementptr inbounds %struct.aead_request, ptr %14, i32 0, i32 3
  store ptr %1, ptr %71, align 32
  %72 = getelementptr inbounds %struct.aead_request, ptr %14, i32 0, i32 1
  store i32 %3, ptr %72, align 8
  %73 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %14) #6
  call void @kfree_sensitive(ptr noundef nonnull %14) #6
  br label %74

74:                                               ; preds = %58, %7
  %75 = phi i32 [ %73, %58 ], [ -12, %7 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #6
  ret i32 %75
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aead_decrypt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x %struct.scatterlist], align 4
  %9 = load i32, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %8, i8 0, i32 60, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 64
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %77, label %14

14:                                               ; preds = %7
  %15 = add i32 %12, %3
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 2848) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %77, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %2, i32 %3, i1 false)
  call void @sg_init_table(ptr noundef nonnull %8, i32 noundef 3) #6
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %19 to i32
  %22 = add i32 %21, 1073741824
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %18
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

29:                                               ; preds = %18
  %30 = and i32 %21, 4095
  %31 = load i32, ptr %8, align 4
  %32 = and i32 %31, 3
  %33 = or i32 %32, %25
  store i32 %33, ptr %8, align 4
  %34 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 1
  store i32 %30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 2
  store i32 %3, ptr %35, align 4
  %36 = ptrtoint ptr %4 to i32
  %37 = add i32 %36, 1073741824
  %38 = lshr i32 %37, 12
  %39 = getelementptr %struct.page, ptr %20, i32 %38
  %40 = ptrtoint ptr %39 to i32
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %29
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

44:                                               ; preds = %29
  %45 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 1
  %46 = and i32 %36, 4095
  %47 = load i32, ptr %45, align 4
  %48 = and i32 %47, 3
  %49 = or i32 %48, %40
  store i32 %49, ptr %45, align 4
  %50 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 1, i32 1
  store i32 %46, ptr %50, align 4
  %51 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 1, i32 2
  store i32 %5, ptr %51, align 4
  %52 = ptrtoint ptr %6 to i32
  %53 = add i32 %52, 1073741824
  %54 = lshr i32 %53, 12
  %55 = getelementptr %struct.page, ptr %20, i32 %54
  %56 = ptrtoint ptr %55 to i32
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59, !prof !9

59:                                               ; preds = %44
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

60:                                               ; preds = %44
  %61 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 2
  %62 = and i32 %52, 4095
  %63 = load i32, ptr %61, align 4
  %64 = and i32 %63, 3
  %65 = or i32 %64, %56
  store i32 %65, ptr %61, align 4
  %66 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 2, i32 1
  store i32 %62, ptr %66, align 4
  %67 = getelementptr inbounds [3 x %struct.scatterlist], ptr %8, i32 0, i32 2, i32 2
  store i32 %9, ptr %67, align 4
  %68 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %69 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 3
  store ptr %68, ptr %69, align 16
  %70 = add i32 %9, %5
  %71 = getelementptr inbounds %struct.aead_request, ptr %16, i32 0, i32 4
  store ptr %8, ptr %71, align 4
  %72 = getelementptr inbounds %struct.aead_request, ptr %16, i32 0, i32 5
  store ptr %8, ptr %72, align 8
  %73 = getelementptr inbounds %struct.aead_request, ptr %16, i32 0, i32 2
  store i32 %70, ptr %73, align 4
  %74 = getelementptr inbounds %struct.aead_request, ptr %16, i32 0, i32 3
  store ptr %1, ptr %74, align 32
  %75 = getelementptr inbounds %struct.aead_request, ptr %16, i32 0, i32 1
  store i32 %3, ptr %75, align 8
  %76 = call i32 @crypto_aead_decrypt(ptr noundef nonnull %16) #6
  call void @kfree_sensitive(ptr noundef nonnull %16) #6
  br label %77

77:                                               ; preds = %60, %14, %7
  %78 = phi i32 [ %76, %60 ], [ -22, %7 ], [ -12, %14 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #6
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @aead_key_setup_encrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @crypto_alloc_aead(ptr noundef %0, i32 noundef 0, i32 noundef 128) #6
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @crypto_aead_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 @crypto_aead_setauthsize(ptr noundef %5, i32 noundef %3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %8, %7 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %15) #6
  %16 = inttoptr i32 %14 to ptr
  br label %17

17:                                               ; preds = %13, %10, %4
  %18 = phi ptr [ %16, %13 ], [ %5, %4 ], [ %5, %10 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @aead_key_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152083180, i64 2152083672, i64 2152083217, i64 2152083273, i64 2152083307, i64 2152083331, i64 2152083372, i64 2152083393, i64 2152083421, i64 2152083455}
