; ModuleID = '/llk/IR/crypto/algboss.c_pt.bc'
source_filename = "../crypto/algboss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.110, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.110 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.cryptomgr_param = type { [34 x ptr], %struct.anon.113, [32 x %struct.anon.114], [128 x i8], ptr, i32, i32 }
%struct.anon.113 = type { %struct.rtattr, %struct.crypto_attr_type }
%struct.rtattr = type { i16, i16 }
%struct.crypto_attr_type = type { i32, i32 }
%struct.anon.114 = type { %struct.rtattr, %struct.crypto_attr_alg }
%struct.crypto_attr_alg = type { [128 x i8] }
%struct.crypto_larval = type { %struct.crypto_alg, ptr, %struct.completion, i32, i8, [39 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.crypto_test_param = type { [128 x i8], [128 x i8], i32 }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }

@cryptomgr_notifier = internal global %struct.notifier_block { ptr @cryptomgr_notify, ptr null, i32 0 }, align 4
@__initcall__kmod_cryptomgr__320_269_cryptomgr_init3 = internal global ptr @cryptomgr_init, section ".initcall3.init", align 4
@__exitcall_cryptomgr_exit = internal global ptr @cryptomgr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file321 = internal constant [32 x i8] c"cryptomgr.file=crypto/cryptomgr\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [22 x i8] c"cryptomgr.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [47 x i8] c"cryptomgr.description=Crypto Algorithm Manager\00", section ".modinfo", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = private unnamed_addr constant [16 x i8] c"cryptomgr_probe\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cryptomgr_test\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_cryptomgr_exit, ptr @__initcall__kmod_cryptomgr__320_269_cryptomgr_init3, ptr @cryptomgr_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cryptomgr_exit() #0 section ".exit.text" {
  %1 = tail call i32 @crypto_unregister_notifier(ptr noundef nonnull @cryptomgr_notifier) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algboss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cryptomgr_init() #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_notifier(ptr noundef nonnull @cryptomgr_notifier) #9
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptomgr_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #2 {
  switch i32 %1, label %146 [
    i32 0, label %4
    i32 1, label %124
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 8
  %6 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %6, label %7, label %146

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4512) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %123, label %11

11:                                               ; preds = %21, %7
  %12 = phi ptr [ %22, %21 ], [ %5, %7 ]
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = freeze i8 %16
  %18 = and i8 %17, 7
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  switch i8 %13, label %23 [
    i8 95, label %21
    i8 45, label %21
  ]

21:                                               ; preds = %20, %20, %11
  %22 = getelementptr i8, ptr %12, i32 1
  br label %11

23:                                               ; preds = %20
  %24 = icmp ne ptr %12, %5
  %25 = icmp eq i8 %13, 40
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %122

27:                                               ; preds = %23
  %28 = ptrtoint ptr %12 to i32
  %29 = ptrtoint ptr %5 to i32
  %30 = sub i32 %28, %29
  %31 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %31, ptr align 1 %5, i32 %30, i1 false) #9
  br label %32

32:                                               ; preds = %77, %27
  %33 = phi ptr [ %12, %27 ], [ %65, %77 ]
  %34 = phi i32 [ 0, %27 ], [ %74, %77 ]
  %35 = getelementptr i8, ptr %33, i32 1
  br label %36

36:                                               ; preds = %46, %32
  %37 = phi ptr [ %35, %32 ], [ %47, %46 ]
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = freeze i8 %41
  %43 = and i8 %42, 7
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  switch i8 %38, label %64 [
    i8 95, label %46
    i8 45, label %46
    i8 40, label %54
  ]

46:                                               ; preds = %45, %45, %36
  %47 = getelementptr i8, ptr %37, i32 1
  br label %36

48:                                               ; preds = %54, %48
  %49 = phi ptr [ %50, %48 ], [ %55, %54 ]
  %50 = getelementptr i8, ptr %49, i32 1
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %48 [
    i8 0, label %122
    i8 40, label %52
    i8 41, label %57
  ]

52:                                               ; preds = %48
  %53 = add i32 %56, 1
  br label %60

54:                                               ; preds = %60, %45
  %55 = phi ptr [ %50, %60 ], [ %37, %45 ]
  %56 = phi i32 [ %61, %60 ], [ 0, %45 ]
  br label %48

57:                                               ; preds = %48
  %58 = add i32 %56, -1
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57, %52
  %61 = phi i32 [ %53, %52 ], [ %58, %57 ]
  br label %54

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %49, i32 2
  br label %64

64:                                               ; preds = %62, %45
  %65 = phi ptr [ %63, %62 ], [ %37, %45 ]
  %66 = icmp eq ptr %65, %35
  br i1 %66, label %122, label %67

67:                                               ; preds = %64
  %68 = ptrtoint ptr %35 to i32
  %69 = ptrtoint ptr %65 to i32
  %70 = sub i32 %69, %68
  %71 = getelementptr %struct.cryptomgr_param, ptr %9, i32 0, i32 2, i32 %34
  store i16 132, ptr %71, align 4
  %72 = getelementptr inbounds %struct.rtattr, ptr %71, i32 0, i32 1
  store i16 1, ptr %72, align 2
  %73 = getelementptr %struct.cryptomgr_param, ptr %9, i32 0, i32 2, i32 %34, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %73, ptr align 1 %35, i32 %70, i1 false) #9
  %74 = add nuw nsw i32 %34, 1
  %75 = getelementptr [34 x ptr], ptr %9, i32 0, i32 %74
  store ptr %71, ptr %75, align 4
  %76 = icmp eq i32 %34, 31
  br i1 %76, label %122, label %77

77:                                               ; preds = %67
  %78 = load i8, ptr %65, align 1
  switch i8 %78, label %122 [
    i8 41, label %79
    i8 44, label %32
  ]

79:                                               ; preds = %77
  %80 = add nuw i32 %34, 2
  %81 = getelementptr [34 x ptr], ptr %9, i32 0, i32 %80
  store ptr null, ptr %81, align 4
  %82 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 1
  store i16 12, ptr %82, align 8
  %83 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 1, i32 0, i32 1
  store i16 2, ptr %83, align 2
  %84 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 2
  %85 = load i32, ptr %84, align 16
  %86 = and i32 %85, -1025
  %87 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 1, i32 1
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.crypto_larval, ptr %2, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -1025
  %91 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 1, i32 1, i32 1
  store i32 %90, ptr %91, align 8
  store ptr %82, ptr %9, align 8
  %92 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 5
  store i32 %85, ptr %92, align 8
  %93 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 6
  store i32 %89, ptr %93, align 4
  %94 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #9, !srcloc !10
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #9, !srcloc !11
  %96 = extractvalue { i32, i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98, !prof !12

98:                                               ; preds = %79
  %99 = add i32 %96, 1
  %100 = or i32 %99, %96
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %104, label %102, !prof !8

102:                                              ; preds = %98, %79
  %103 = phi i32 [ 2, %79 ], [ 1, %98 ]
  tail call void @refcount_warn_saturate(ptr noundef %94, i32 noundef %103) #9
  br label %104

104:                                              ; preds = %102, %98
  %105 = getelementptr inbounds %struct.cryptomgr_param, ptr %9, i32 0, i32 4
  store ptr %2, ptr %105, align 4
  %106 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cryptomgr_probe, ptr noundef nonnull %9, i32 noundef -1, ptr noundef nonnull @.str) #9
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 @wake_up_process(ptr noundef %106) #9
  br label %146

110:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #9, !srcloc !10
  %111 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #9, !srcloc !14
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = icmp sgt i32 %112, 0
  br i1 %115, label %122, label %116, !prof !8

116:                                              ; preds = %114
  tail call void @refcount_warn_saturate(ptr noundef %94, i32 noundef 3) #9
  br label %122

117:                                              ; preds = %110
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %118 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 14
  %119 = load ptr, ptr %118, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void %119(ptr noundef %2) #9
  br label %122

122:                                              ; preds = %121, %117, %116, %114, %77, %67, %64, %48, %23
  tail call void @kfree(ptr noundef nonnull %9) #9
  br label %123

123:                                              ; preds = %122, %7
  tail call void @module_put(ptr noundef null) #9
  br label %146

124:                                              ; preds = %3
  %125 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %125, label %126, label %146

126:                                              ; preds = %124
  %127 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %128 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3520, i32 noundef 260) #10
  %129 = icmp eq ptr %128, null
  br i1 %129, label %145, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %128, ptr noundef align 8 dereferenceable(128) %131, i32 128, i1 false) #9
  %132 = getelementptr inbounds %struct.crypto_test_param, ptr %128, i32 0, i32 1
  %133 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %132, ptr noundef align 8 dereferenceable(128) %133, i32 128, i1 false) #9
  %134 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 2
  %135 = load i32, ptr %134, align 16
  %136 = lshr i32 %135, 3
  %137 = and i32 %136, 1024
  %138 = or i32 %137, %135
  %139 = getelementptr inbounds %struct.crypto_test_param, ptr %128, i32 0, i32 2
  store i32 %138, ptr %139, align 8
  %140 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cryptomgr_test, ptr noundef nonnull %128, i32 noundef -1, ptr noundef nonnull @.str.1) #9
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %144, label %142

142:                                              ; preds = %130
  %143 = tail call i32 @wake_up_process(ptr noundef %140) #9
  br label %146

144:                                              ; preds = %130
  tail call void @kfree(ptr noundef nonnull %128) #9
  br label %145

145:                                              ; preds = %144, %126
  tail call void @module_put(ptr noundef null) #9
  br label %146

146:                                              ; preds = %145, %142, %124, %123, %108, %4, %3
  %147 = phi i32 [ 0, %3 ], [ 32769, %108 ], [ 1, %4 ], [ 1, %123 ], [ 32769, %142 ], [ 1, %124 ], [ 1, %145 ]
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptomgr_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.cryptomgr_param, ptr %0, i32 0, i32 3
  %3 = tail call ptr @crypto_lookup_template(ptr noundef %2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.crypto_template, ptr %3, i32 0, i32 3
  br label %7

7:                                                ; preds = %16, %5
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 %8(ptr noundef nonnull %3, ptr noundef %0) #9
  %10 = icmp eq i32 %9, -11
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #9
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20, !prof !8

16:                                               ; preds = %11
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %7, label %20

20:                                               ; preds = %16, %11, %7
  %21 = getelementptr inbounds %struct.crypto_template, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @module_put(ptr noundef %22) #9
  br label %23

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %struct.cryptomgr_param, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.crypto_larval, ptr %25, i32 0, i32 2
  tail call void @complete_all(ptr noundef %26) #9
  %27 = load ptr, ptr %24, align 4
  tail call fastcc void @crypto_alg_put(ptr noundef %27)
  tail call void @kfree(ptr noundef %0) #9
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #11
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crypto_alg_put(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !14
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %14, label %8, !prof !8

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #9
  br label %14

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %13, %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_lookup_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptomgr_test(ptr noundef %0) #4 {
  tail call void @crypto_alg_tested(ptr noundef %0, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %0) #9
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #11
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_alg_tested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_notifier(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { noreturn nounwind }

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
!9 = !{i64 2154680860, i64 2154681341, i64 2154680897, i64 2154680953, i64 2154680987, i64 2154681011, i64 2154681052, i64 2154681073, i64 2154681101, i64 2154681135}
!10 = !{i64 315908, i64 2147817474, i64 2147817500, i64 2147817547, i64 2147817569, i64 2147817597, i64 2147817617}
!11 = !{i64 2147892633, i64 2147892665, i64 2147892694, i64 2147892728, i64 2147892759, i64 2147892782}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2147992831}
!14 = !{i64 2147894990, i64 2147895022, i64 2147895051, i64 2147895085, i64 2147895116, i64 2147895139}
!15 = !{i64 2148591361}
