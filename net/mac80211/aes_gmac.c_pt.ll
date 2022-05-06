; ModuleID = '/llk/IR/net/mac80211/aes_gmac.c_pt.bc'
source_filename = "../net/mac80211/aes_gmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.90, %struct.atomic_t }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.90 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }

@.str = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_aes_gmac(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [5 x %struct.scatterlist], align 4
  %8 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %7, i8 0, i32 100, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 64
  %12 = icmp ult i32 %4, 16
  br i1 %12, label %167, label %13

13:                                               ; preds = %6
  %14 = add i32 %10, 100
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 2848) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %167, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 %11
  %19 = getelementptr i8, ptr %18, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %19, ptr noundef align 1 dereferenceable(20) %1, i32 20, i1 false)
  %20 = load i16, ptr %1, align 2
  %21 = and i16 %20, 252
  %22 = icmp eq i16 %21, 128
  br i1 %22, label %23, label %88

23:                                               ; preds = %17
  call void @sg_init_table(ptr noundef nonnull %7, i32 noundef 5) #6
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %19 to i32
  %26 = add i32 %25, 1073741824
  %27 = lshr i32 %26, 12
  %28 = getelementptr %struct.page, ptr %24, i32 %27
  %29 = ptrtoint ptr %28 to i32
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !9

32:                                               ; preds = %23
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

33:                                               ; preds = %23
  %34 = and i32 %25, 4095
  %35 = load i32, ptr %7, align 4
  %36 = and i32 %35, 3
  %37 = or i32 %36, %29
  store i32 %37, ptr %7, align 4
  %38 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  store i32 %34, ptr %38, align 4
  %39 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  store i32 20, ptr %39, align 4
  %40 = ptrtoint ptr %18 to i32
  %41 = add i32 %40, 1073741824
  %42 = lshr i32 %41, 12
  %43 = getelementptr %struct.page, ptr %24, i32 %42
  %44 = ptrtoint ptr %43 to i32
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !9

47:                                               ; preds = %33
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

48:                                               ; preds = %33
  %49 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 1
  %50 = and i32 %40, 4095
  %51 = load i32, ptr %49, align 4
  %52 = and i32 %51, 3
  %53 = or i32 %52, %44
  store i32 %53, ptr %49, align 4
  %54 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 1, i32 1
  store i32 %50, ptr %54, align 4
  %55 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 1, i32 2
  store i32 8, ptr %55, align 4
  %56 = getelementptr i8, ptr %3, i32 8
  %57 = ptrtoint ptr %56 to i32
  %58 = add i32 %57, 1073741824
  %59 = lshr i32 %58, 12
  %60 = getelementptr %struct.page, ptr %24, i32 %59
  %61 = ptrtoint ptr %60 to i32
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64, !prof !9

64:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

65:                                               ; preds = %48
  %66 = add i32 %4, -24
  %67 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 2
  %68 = and i32 %57, 4095
  %69 = load i32, ptr %67, align 4
  %70 = and i32 %69, 3
  %71 = or i32 %70, %61
  store i32 %71, ptr %67, align 4
  %72 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 2, i32 1
  store i32 %68, ptr %72, align 4
  %73 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 2, i32 2
  store i32 %66, ptr %73, align 4
  %74 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 3
  %77 = or i32 %76, %44
  store i32 %77, ptr %74, align 4
  %78 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 3, i32 1
  store i32 %50, ptr %78, align 4
  %79 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 3, i32 2
  store i32 16, ptr %79, align 4
  %80 = ptrtoint ptr %5 to i32
  %81 = add i32 %80, 1073741824
  %82 = lshr i32 %81, 12
  %83 = getelementptr %struct.page, ptr %24, i32 %82
  %84 = ptrtoint ptr %83 to i32
  %85 = and i32 %84, 3
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %146, label %87, !prof !9

87:                                               ; preds = %65
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

88:                                               ; preds = %17
  call void @sg_init_table(ptr noundef nonnull %7, i32 noundef 4) #6
  %89 = load ptr, ptr @mem_map, align 4
  %90 = ptrtoint ptr %19 to i32
  %91 = add i32 %90, 1073741824
  %92 = lshr i32 %91, 12
  %93 = getelementptr %struct.page, ptr %89, i32 %92
  %94 = ptrtoint ptr %93 to i32
  %95 = and i32 %94, 3
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97, !prof !9

97:                                               ; preds = %88
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

98:                                               ; preds = %88
  %99 = and i32 %90, 4095
  %100 = load i32, ptr %7, align 4
  %101 = and i32 %100, 3
  %102 = or i32 %101, %94
  store i32 %102, ptr %7, align 4
  %103 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  store i32 %99, ptr %103, align 4
  %104 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  store i32 20, ptr %104, align 4
  %105 = ptrtoint ptr %3 to i32
  %106 = add i32 %105, 1073741824
  %107 = lshr i32 %106, 12
  %108 = getelementptr %struct.page, ptr %89, i32 %107
  %109 = ptrtoint ptr %108 to i32
  %110 = and i32 %109, 3
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112, !prof !9

112:                                              ; preds = %98
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

113:                                              ; preds = %98
  %114 = add i32 %4, -16
  %115 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 1
  %116 = and i32 %105, 4095
  %117 = load i32, ptr %115, align 4
  %118 = and i32 %117, 3
  %119 = or i32 %118, %109
  store i32 %119, ptr %115, align 4
  %120 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 1, i32 1
  store i32 %116, ptr %120, align 4
  %121 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 1, i32 2
  store i32 %114, ptr %121, align 4
  %122 = ptrtoint ptr %18 to i32
  %123 = add i32 %122, 1073741824
  %124 = lshr i32 %123, 12
  %125 = getelementptr %struct.page, ptr %89, i32 %124
  %126 = ptrtoint ptr %125 to i32
  %127 = and i32 %126, 3
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129, !prof !9

129:                                              ; preds = %113
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

130:                                              ; preds = %113
  %131 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 2
  %132 = and i32 %122, 4095
  %133 = load i32, ptr %131, align 4
  %134 = and i32 %133, 3
  %135 = or i32 %134, %126
  store i32 %135, ptr %131, align 4
  %136 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 2, i32 1
  store i32 %132, ptr %136, align 4
  %137 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 2, i32 2
  store i32 16, ptr %137, align 4
  %138 = ptrtoint ptr %5 to i32
  %139 = add i32 %138, 1073741824
  %140 = lshr i32 %139, 12
  %141 = getelementptr %struct.page, ptr %89, i32 %140
  %142 = ptrtoint ptr %141 to i32
  %143 = and i32 %142, 3
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145, !prof !9

145:                                              ; preds = %130
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

146:                                              ; preds = %130, %65
  %147 = phi i32 [ 4, %65 ], [ 3, %130 ]
  %148 = phi i32 [ %80, %65 ], [ %138, %130 ]
  %149 = phi i32 [ %84, %65 ], [ %142, %130 ]
  %150 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 %147
  %151 = and i32 %148, 4095
  %152 = load i32, ptr %150, align 4
  %153 = and i32 %152, 3
  %154 = or i32 %153, %149
  store i32 %154, ptr %150, align 4
  %155 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 %147, i32 1
  store i32 %151, ptr %155, align 4
  %156 = getelementptr inbounds [5 x %struct.scatterlist], ptr %7, i32 0, i32 %147, i32 2
  store i32 16, ptr %156, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %8, ptr noundef align 1 dereferenceable(12) %2, i32 12, i1 false)
  %157 = getelementptr inbounds i8, ptr %8, i32 12
  store i32 16777216, ptr %157, align 1
  %158 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %159 = getelementptr inbounds %struct.crypto_async_request, ptr %15, i32 0, i32 3
  store ptr %158, ptr %159, align 16
  %160 = getelementptr inbounds %struct.aead_request, ptr %15, i32 0, i32 4
  store ptr %7, ptr %160, align 4
  %161 = getelementptr inbounds %struct.aead_request, ptr %15, i32 0, i32 5
  store ptr %7, ptr %161, align 8
  %162 = getelementptr inbounds %struct.aead_request, ptr %15, i32 0, i32 2
  store i32 0, ptr %162, align 4
  %163 = getelementptr inbounds %struct.aead_request, ptr %15, i32 0, i32 3
  store ptr %8, ptr %163, align 32
  %164 = add i32 %4, 20
  %165 = getelementptr inbounds %struct.aead_request, ptr %15, i32 0, i32 1
  store i32 %164, ptr %165, align 8
  %166 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %15) #6
  call void @kfree_sensitive(ptr noundef nonnull %15) #6
  br label %167

167:                                              ; preds = %146, %13, %6
  %168 = phi i32 [ %166, %146 ], [ -22, %6 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #6
  ret i32 %168
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
define dso_local ptr @ieee80211_aes_gmac_key_setup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 128) #6
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @crypto_aead_setkey(ptr noundef %3, ptr noundef %0, i32 noundef %1) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call i32 @crypto_aead_setauthsize(ptr noundef %3, i32 noundef 16) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %9, %8 ], [ %6, %5 ]
  %13 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %13) #6
  %14 = inttoptr i32 %12 to ptr
  br label %15

15:                                               ; preds = %11, %8, %2
  %16 = phi ptr [ %14, %11 ], [ %3, %2 ], [ %3, %8 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_gmac_key_free(ptr noundef %0) local_unnamed_addr #0 {
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
!10 = !{i64 2153393636, i64 2153394128, i64 2153393673, i64 2153393729, i64 2153393763, i64 2153393787, i64 2153393828, i64 2153393849, i64 2153393877, i64 2153393911}
