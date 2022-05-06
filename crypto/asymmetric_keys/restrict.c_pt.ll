; ModuleID = '/llk/IR/crypto/asymmetric_keys/restrict.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/restrict.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.anon.8 = type { %struct.asymmetric_key_id, [10 x i8] }
%struct.asymmetric_key_id = type { i16, [0 x i8] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.1, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.2, %union.anon.6, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.2 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.3, ptr, ptr, ptr }
%union.anon.3 = type { i32 }
%union.anon.6 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }

@__setup_str_ca_keys_setup = internal constant [9 x i8] c"ca_keys=\00", section ".init.rodata", align 1
@__setup_ca_keys_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ca_keys_setup, ptr @ca_keys_setup, i32 0 }, section ".init.setup", align 4
@key_type_asymmetric = external dso_local global %struct.key_type, align 4
@ca_keyid = internal unnamed_addr global ptr null, align 4
@use_builtin_keys = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [4 x i8] c"id:\00", align 1
@cakey = internal global %struct.anon.8 zeroinitializer, align 2
@.str.1 = private unnamed_addr constant [39 x i8] c"\013ASYM: Missing or invalid ca_keys id\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013ASYM: Unparsable ca_keys id hex string\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@key_type_keyring = external dso_local global %struct.key_type, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_ca_keys_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ca_keys_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str, i32 noundef 3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = tail call i32 @strlen(ptr noundef nonnull %0)
  %8 = add i32 %7, -25
  %9 = icmp ult i32 %8, -20
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %25

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -3
  %14 = lshr i32 %13, 1
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = tail call i32 @__asymmetric_key_hex_to_key_id(ptr noundef %15, ptr noundef nonnull @cakey, i32 noundef %14) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %25

20:                                               ; preds = %12
  store ptr @cakey, ptr @ca_keyid, align 4
  br label %25

21:                                               ; preds = %3
  %22 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i1 true, ptr @use_builtin_keys, align 1
  br label %25

25:                                               ; preds = %24, %21, %20, %18, %10, %1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @restrict_link_by_signature(ptr nocapture noundef readnone %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %1, @key_type_asymmetric
  br i1 %7, label %8, label %51

8:                                                ; preds = %6
  %9 = getelementptr [4 x ptr], ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = getelementptr [3 x ptr], ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr [3 x ptr], ptr %10, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %19, %15, %12
  %24 = load ptr, ptr @ca_keyid, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr [3 x ptr], ptr %10, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @asymmetric_key_id_partial(ptr noundef %28, ptr noundef nonnull %24) #7
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load ptr, ptr %10, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi ptr [ %31, %30 ], [ %13, %23 ]
  %34 = getelementptr [3 x ptr], ptr %10, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr [3 x ptr], ptr %10, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @find_asymmetric_key(ptr noundef nonnull %3, ptr noundef %33, ptr noundef %35, ptr noundef %37, i1 noundef zeroext false) #7
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %51, label %40

40:                                               ; preds = %32
  %41 = load i1, ptr @use_builtin_keys, align 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.key, ptr %38, i32 0, i32 14
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %40
  %48 = tail call i32 @verify_signature(ptr noundef %38, ptr noundef nonnull %10) #7
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi i32 [ %48, %47 ], [ -126, %42 ]
  tail call void @key_put(ptr noundef %38) #7
  br label %51

51:                                               ; preds = %49, %32, %26, %19, %8, %6, %4
  %52 = phi i32 [ %50, %49 ], [ -126, %4 ], [ -95, %6 ], [ -65, %8 ], [ -126, %19 ], [ -1, %26 ], [ -126, %32 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_partial(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_asymmetric_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @restrict_link_by_key_or_keyring(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = tail call fastcc i32 @key_or_keyring_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @key_or_keyring_common(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %97, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @key_type_keyring
  br i1 %10, label %11, label %97

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  %13 = xor i1 %12, true
  %14 = or i1 %13, %4
  br i1 %14, label %15, label %97

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, @key_type_asymmetric
  br i1 %16, label %17, label %97

17:                                               ; preds = %15
  %18 = getelementptr [4 x ptr], ptr %2, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %97, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = getelementptr [3 x ptr], ptr %19, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr [3 x ptr], ptr %19, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %97, label %32

32:                                               ; preds = %28, %24, %21
  br i1 %12, label %71, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 15, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, @key_type_keyring
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = getelementptr [3 x ptr], ptr %19, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr [3 x ptr], ptr %19, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr @find_asymmetric_key(ptr noundef nonnull %3, ptr noundef %22, ptr noundef %39, ptr noundef %41, i1 noundef zeroext false) #7
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %44 = select i1 %43, ptr null, ptr %42
  br label %71

45:                                               ; preds = %33
  %46 = icmp eq ptr %35, @key_type_asymmetric
  br i1 %46, label %47, label %97

47:                                               ; preds = %45
  %48 = getelementptr %struct.key, ptr %3, i32 0, i32 16, i32 0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr [3 x ptr], ptr %19, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %23, label %53, label %60

53:                                               ; preds = %47
  br i1 %52, label %54, label %61

54:                                               ; preds = %53
  %55 = getelementptr ptr, ptr %49, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr [3 x ptr], ptr %19, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %56, ptr noundef %58) #7
  br i1 %59, label %87, label %71

60:                                               ; preds = %47
  br i1 %52, label %61, label %64

61:                                               ; preds = %60, %53
  %62 = phi ptr [ %22, %60 ], [ %51, %53 ]
  %63 = tail call fastcc zeroext i1 @match_either_id(ptr noundef %49, ptr noundef nonnull %62)
  br i1 %63, label %87, label %71

64:                                               ; preds = %60
  %65 = getelementptr ptr, ptr %49, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %66, ptr noundef nonnull %51) #7
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load ptr, ptr %19, align 4
  %70 = tail call fastcc zeroext i1 @match_either_id(ptr noundef %49, ptr noundef %69)
  br i1 %70, label %87, label %71

71:                                               ; preds = %68, %64, %61, %54, %37, %32
  %72 = phi ptr [ null, %32 ], [ %44, %37 ], [ null, %68 ], [ null, %64 ], [ null, %54 ], [ null, %61 ]
  %73 = xor i1 %4, true
  %74 = icmp ne ptr %72, null
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %19, align 4
  %78 = getelementptr [3 x ptr], ptr %19, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr [3 x ptr], ptr %19, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = tail call ptr @find_asymmetric_key(ptr noundef nonnull %0, ptr noundef %77, ptr noundef %79, ptr noundef %81, i1 noundef zeroext false) #7
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %97, label %84

84:                                               ; preds = %76, %71
  %85 = phi ptr [ %72, %71 ], [ %82, %76 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %89

87:                                               ; preds = %68, %61, %54
  %88 = tail call fastcc ptr @__key_get(ptr noundef nonnull %3)
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi ptr [ %85, %84 ], [ %3, %87 ]
  %91 = tail call i32 @key_validate(ptr noundef nonnull %90) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = tail call i32 @verify_signature(ptr noundef nonnull %90, ptr noundef nonnull %19) #7
  br label %95

95:                                               ; preds = %93, %89
  %96 = phi i32 [ %94, %93 ], [ %91, %89 ]
  tail call void @key_put(ptr noundef nonnull %90) #7
  br label %97

97:                                               ; preds = %95, %84, %76, %45, %28, %17, %15, %11, %7, %5
  %98 = phi i32 [ %96, %95 ], [ -126, %5 ], [ -95, %7 ], [ -126, %11 ], [ -95, %15 ], [ -65, %17 ], [ -126, %28 ], [ -95, %45 ], [ -126, %84 ], [ -126, %76 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @restrict_link_by_key_or_keyring_chain(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = tail call fastcc i32 @key_or_keyring_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__asymmetric_key_hex_to_key_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__key_get(ptr noundef returned %0) unnamed_addr #5 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #7, !srcloc !8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !9
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !10

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #7
  br label %11

11:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @match_either_id(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %3, ptr noundef %1) #7
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr ptr, ptr %0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %7, ptr noundef %1) #7
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i1 [ true, %2 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

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
!8 = !{i64 548309, i64 2148038280, i64 2148038306, i64 2148038353, i64 2148038375, i64 2148038403, i64 2148038423}
!9 = !{i64 2148051153, i64 2148051185, i64 2148051214, i64 2148051248, i64 2148051279, i64 2148051302}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
