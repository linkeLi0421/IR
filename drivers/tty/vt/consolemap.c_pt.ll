; ModuleID = '/llk/IR/drivers/tty/vt/consolemap.c_pt.bc'
source_filename = "../drivers/tty/vt/consolemap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inverse_translate:\09\09\09\09\09"
module asm "\09.asciz \09\22inverse_translate\22\09\09\09\09\09"
module asm "__kstrtabns_inverse_translate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_set_default_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22con_set_default_unimap\22\09\09\09\09\09"
module asm "__kstrtabns_con_set_default_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_copy_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22con_copy_unimap\22\09\09\09\09\09"
module asm "__kstrtabns_con_copy_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uni_pagedir = type { [32 x ptr], i32, i32, [4 x ptr], ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.unipair = type { i16, i16 }

@inv_translate = internal unnamed_addr global [63 x i32] zeroinitializer, align 4
@translations = internal global [4 x [256 x i16]] [[256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 8594, i16 8592, i16 8593, i16 8595, i16 47, i16 9608, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 160, i16 9670, i16 9618, i16 9225, i16 9228, i16 9229, i16 9226, i16 176, i16 177, i16 9617, i16 9227, i16 9496, i16 9488, i16 9484, i16 9492, i16 9532, i16 9146, i16 9147, i16 9472, i16 9148, i16 9149, i16 9500, i16 9508, i16 9524, i16 9516, i16 9474, i16 8804, i16 8805, i16 960, i16 8800, i16 163, i16 183, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], [256 x i16] [i16 0, i16 9786, i16 9787, i16 9829, i16 9830, i16 9827, i16 9824, i16 8226, i16 9688, i16 9675, i16 9689, i16 9794, i16 9792, i16 9834, i16 9835, i16 9788, i16 9654, i16 9664, i16 8597, i16 8252, i16 182, i16 167, i16 9644, i16 8616, i16 8593, i16 8595, i16 8594, i16 8592, i16 8735, i16 8596, i16 9650, i16 9660, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 8962, i16 199, i16 252, i16 233, i16 226, i16 228, i16 224, i16 229, i16 231, i16 234, i16 235, i16 232, i16 239, i16 238, i16 236, i16 196, i16 197, i16 201, i16 230, i16 198, i16 244, i16 246, i16 242, i16 251, i16 249, i16 255, i16 214, i16 220, i16 162, i16 163, i16 165, i16 8359, i16 402, i16 225, i16 237, i16 243, i16 250, i16 241, i16 209, i16 170, i16 186, i16 191, i16 8976, i16 172, i16 189, i16 188, i16 161, i16 171, i16 187, i16 9617, i16 9618, i16 9619, i16 9474, i16 9508, i16 9569, i16 9570, i16 9558, i16 9557, i16 9571, i16 9553, i16 9559, i16 9565, i16 9564, i16 9563, i16 9488, i16 9492, i16 9524, i16 9516, i16 9500, i16 9472, i16 9532, i16 9566, i16 9567, i16 9562, i16 9556, i16 9577, i16 9574, i16 9568, i16 9552, i16 9580, i16 9575, i16 9576, i16 9572, i16 9573, i16 9561, i16 9560, i16 9554, i16 9555, i16 9579, i16 9578, i16 9496, i16 9484, i16 9608, i16 9604, i16 9612, i16 9616, i16 9600, i16 945, i16 223, i16 915, i16 960, i16 931, i16 963, i16 181, i16 964, i16 934, i16 920, i16 937, i16 948, i16 8734, i16 966, i16 949, i16 8745, i16 8801, i16 177, i16 8805, i16 8804, i16 8992, i16 8993, i16 247, i16 8776, i16 176, i16 8729, i16 183, i16 8730, i16 8319, i16 178, i16 9632, i16 160], [256 x i16] [i16 -4096, i16 -4095, i16 -4094, i16 -4093, i16 -4092, i16 -4091, i16 -4090, i16 -4089, i16 -4088, i16 -4087, i16 -4086, i16 -4085, i16 -4084, i16 -4083, i16 -4082, i16 -4081, i16 -4080, i16 -4079, i16 -4078, i16 -4077, i16 -4076, i16 -4075, i16 -4074, i16 -4073, i16 -4072, i16 -4071, i16 -4070, i16 -4069, i16 -4068, i16 -4067, i16 -4066, i16 -4065, i16 -4064, i16 -4063, i16 -4062, i16 -4061, i16 -4060, i16 -4059, i16 -4058, i16 -4057, i16 -4056, i16 -4055, i16 -4054, i16 -4053, i16 -4052, i16 -4051, i16 -4050, i16 -4049, i16 -4048, i16 -4047, i16 -4046, i16 -4045, i16 -4044, i16 -4043, i16 -4042, i16 -4041, i16 -4040, i16 -4039, i16 -4038, i16 -4037, i16 -4036, i16 -4035, i16 -4034, i16 -4033, i16 -4032, i16 -4031, i16 -4030, i16 -4029, i16 -4028, i16 -4027, i16 -4026, i16 -4025, i16 -4024, i16 -4023, i16 -4022, i16 -4021, i16 -4020, i16 -4019, i16 -4018, i16 -4017, i16 -4016, i16 -4015, i16 -4014, i16 -4013, i16 -4012, i16 -4011, i16 -4010, i16 -4009, i16 -4008, i16 -4007, i16 -4006, i16 -4005, i16 -4004, i16 -4003, i16 -4002, i16 -4001, i16 -4000, i16 -3999, i16 -3998, i16 -3997, i16 -3996, i16 -3995, i16 -3994, i16 -3993, i16 -3992, i16 -3991, i16 -3990, i16 -3989, i16 -3988, i16 -3987, i16 -3986, i16 -3985, i16 -3984, i16 -3983, i16 -3982, i16 -3981, i16 -3980, i16 -3979, i16 -3978, i16 -3977, i16 -3976, i16 -3975, i16 -3974, i16 -3973, i16 -3972, i16 -3971, i16 -3970, i16 -3969, i16 -3968, i16 -3967, i16 -3966, i16 -3965, i16 -3964, i16 -3963, i16 -3962, i16 -3961, i16 -3960, i16 -3959, i16 -3958, i16 -3957, i16 -3956, i16 -3955, i16 -3954, i16 -3953, i16 -3952, i16 -3951, i16 -3950, i16 -3949, i16 -3948, i16 -3947, i16 -3946, i16 -3945, i16 -3944, i16 -3943, i16 -3942, i16 -3941, i16 -3940, i16 -3939, i16 -3938, i16 -3937, i16 -3936, i16 -3935, i16 -3934, i16 -3933, i16 -3932, i16 -3931, i16 -3930, i16 -3929, i16 -3928, i16 -3927, i16 -3926, i16 -3925, i16 -3924, i16 -3923, i16 -3922, i16 -3921, i16 -3920, i16 -3919, i16 -3918, i16 -3917, i16 -3916, i16 -3915, i16 -3914, i16 -3913, i16 -3912, i16 -3911, i16 -3910, i16 -3909, i16 -3908, i16 -3907, i16 -3906, i16 -3905, i16 -3904, i16 -3903, i16 -3902, i16 -3901, i16 -3900, i16 -3899, i16 -3898, i16 -3897, i16 -3896, i16 -3895, i16 -3894, i16 -3893, i16 -3892, i16 -3891, i16 -3890, i16 -3889, i16 -3888, i16 -3887, i16 -3886, i16 -3885, i16 -3884, i16 -3883, i16 -3882, i16 -3881, i16 -3880, i16 -3879, i16 -3878, i16 -3877, i16 -3876, i16 -3875, i16 -3874, i16 -3873, i16 -3872, i16 -3871, i16 -3870, i16 -3869, i16 -3868, i16 -3867, i16 -3866, i16 -3865, i16 -3864, i16 -3863, i16 -3862, i16 -3861, i16 -3860, i16 -3859, i16 -3858, i16 -3857, i16 -3856, i16 -3855, i16 -3854, i16 -3853, i16 -3852, i16 -3851, i16 -3850, i16 -3849, i16 -3848, i16 -3847, i16 -3846, i16 -3845, i16 -3844, i16 -3843, i16 -3842, i16 -3841]], align 2
@__kstrtab_inverse_translate = external dso_local constant [0 x i8], align 1
@__kstrtabns_inverse_translate = external dso_local constant [0 x i8], align 1
@__ksymtab_inverse_translate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inverse_translate to i32), ptr @__kstrtab_inverse_translate, ptr @__kstrtabns_inverse_translate }, section "___ksymtab_gpl+inverse_translate", align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@dflt = internal unnamed_addr global ptr null, align 4
@dfont_unitable = external dso_local local_unnamed_addr global [0 x i16], align 2
@dfont_unicount = external dso_local local_unnamed_addr global [0 x i8], align 1
@__kstrtab_con_set_default_unimap = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_set_default_unimap = external dso_local constant [0 x i8], align 1
@__ksymtab_con_set_default_unimap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_set_default_unimap to i32), ptr @__kstrtab_con_set_default_unimap, ptr @__kstrtabns_con_set_default_unimap }, section "___ksymtab+con_set_default_unimap", align 4
@__kstrtab_con_copy_unimap = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_copy_unimap = external dso_local constant [0 x i8], align 1
@__ksymtab_con_copy_unimap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_copy_unimap to i32), ptr @__kstrtab_con_copy_unimap, ptr @__kstrtabns_con_copy_unimap }, section "___ksymtab+con_copy_unimap", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_con_copy_unimap, ptr @__ksymtab_con_set_default_unimap, ptr @__ksymtab_inverse_translate], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @set_translate(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr [63 x i32], ptr @inv_translate, i32 0, i32 %5
  store i32 %0, ptr %6, align 4
  %7 = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 %0
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @inverse_translate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp ugt i32 %1, 511
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = trunc i32 %1 to i16
  br label %38

12:                                               ; preds = %5
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.uni_pagedir, ptr %8, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = trunc i32 %1 to i16
  br label %38

20:                                               ; preds = %14
  %21 = getelementptr i16, ptr %16, i32 %1
  %22 = load i16, ptr %21, align 2
  br label %38

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr [63 x i32], ptr @inv_translate, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.uni_pagedir, ptr %8, i32 0, i32 3, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = trunc i32 %1 to i16
  br label %38

34:                                               ; preds = %23
  %35 = getelementptr i8, ptr %30, i32 %1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  br label %38

38:                                               ; preds = %34, %32, %20, %18, %10, %3
  %39 = phi i16 [ %22, %20 ], [ %19, %18 ], [ %37, %34 ], [ %33, %32 ], [ %11, %10 ], [ 0, %3 ]
  ret i16 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_set_trans_old(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [256 x i16], align 2
  %3 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(512) %2, i8 0, i32 512, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i32 256, i1 false), !annotation !8
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 256, i32 -1090519040) #15, !srcloc !9
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !10

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #16, !srcloc !11
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 256) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %13, %7 ], [ 256, %1 ]
  %17 = sub i32 256, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #14
  br label %29

19:                                               ; preds = %19, %7
  %20 = phi i32 [ %26, %19 ], [ 0, %7 ]
  %21 = getelementptr [256 x i8], ptr %3, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = or i16 %23, -4096
  %25 = getelementptr [256 x i16], ptr %2, i32 0, i32 %20
  store i16 %24, ptr %25, align 2
  %26 = add nuw nsw i32 %20, 1
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %28, label %19

28:                                               ; preds = %19
  call void @console_lock() #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(512) getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), ptr noundef nonnull align 2 dereferenceable(512) %2, i32 512, i1 false)
  call fastcc void @update_user_maps()
  call void @console_unlock() #14
  br label %29

29:                                               ; preds = %28, %15
  %30 = phi i32 [ 0, %28 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #14
  ret i32 %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_user_maps() unnamed_addr #3 {
  br label %1

1:                                                ; preds = %62, %0
  %2 = phi ptr [ null, %0 ], [ %63, %62 ]
  %3 = phi i32 [ 0, %0 ], [ %64, %62 ]
  %4 = tail call i32 @vc_cons_allocated(i32 noundef %3) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %62, label %6

6:                                                ; preds = %1
  %7 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %8, i32 0, i32 49
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %11, %2
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %62, label %15

15:                                               ; preds = %6
  tail call fastcc void @set_inverse_transl(ptr noundef %8, ptr noundef nonnull %11, i32 noundef 3)
  %16 = getelementptr inbounds %struct.uni_pagedir, ptr %11, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 1024) #17
  store ptr %21, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %17, %15 ], [ %21, %19 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(1024) %24, i8 0, i32 1024, i1 false) #14
  br label %25

25:                                               ; preds = %59, %23
  %26 = phi i32 [ 0, %23 ], [ %60, %59 ]
  %27 = getelementptr [32 x ptr], ptr %11, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %25
  %31 = shl i32 %26, 11
  br label %32

32:                                               ; preds = %56, %30
  %33 = phi i32 [ 0, %30 ], [ %57, %56 ]
  %34 = getelementptr ptr, ptr %28, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = shl i32 %33, 6
  %39 = add nuw nsw i32 %38, %31
  br label %40

40:                                               ; preds = %53, %37
  %41 = phi i32 [ 0, %37 ], [ %54, %53 ]
  %42 = getelementptr i16, ptr %35, i32 %41
  %43 = load i16, ptr %42, align 2
  %44 = icmp ult i16 %43, 512
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = zext i16 %43 to i32
  %47 = getelementptr i16, ptr %24, i32 %46
  %48 = load i16, ptr %47, align 2
  %49 = icmp ult i16 %48, 32
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = add nuw nsw i32 %39, %41
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %47, align 2
  br label %53

53:                                               ; preds = %50, %45, %40
  %54 = add nuw nsw i32 %41, 1
  %55 = icmp eq i32 %54, 64
  br i1 %55, label %56, label %40

56:                                               ; preds = %53, %32
  %57 = add nuw nsw i32 %33, 1
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %32

59:                                               ; preds = %56, %25
  %60 = add nuw nsw i32 %26, 1
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %25

62:                                               ; preds = %59, %19, %6, %1
  %63 = phi ptr [ %2, %6 ], [ %2, %1 ], [ %11, %19 ], [ %11, %59 ]
  %64 = add nuw nsw i32 %3, 1
  %65 = icmp eq i32 %64, 63
  br i1 %65, label %66, label %1

66:                                               ; preds = %62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_get_trans_old(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %2, i8 0, i32 256, i1 false), !annotation !8
  tail call void @console_lock() #14
  %3 = load i32, ptr @fg_console, align 4
  %4 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 49
  br label %7

7:                                                ; preds = %41, %1
  %8 = phi i32 [ 0, %1 ], [ %46, %41 ]
  %9 = getelementptr i16, ptr getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), i32 %8
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ult i16 %10, 32
  br i1 %12, label %41, label %13

13:                                               ; preds = %7
  switch i16 %10, label %14 [
    i16 -257, label %41
    i16 8207, label %41
    i16 8206, label %41
    i16 8205, label %41
    i16 8204, label %41
    i16 8203, label %41
  ]

14:                                               ; preds = %13
  %15 = and i32 %11, 65024
  %16 = icmp eq i32 %15, 61440
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = and i32 %11, 511
  br label %41

19:                                               ; preds = %14
  %20 = load ptr, ptr %6, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = lshr i32 %11, 11
  %25 = getelementptr [32 x ptr], ptr %21, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = lshr i32 %11, 6
  %30 = and i32 %29, 31
  %31 = getelementptr ptr, ptr %26, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = and i32 %11, 63
  %36 = getelementptr i16, ptr %32, i32 %35
  %37 = load i16, ptr %36, align 2
  %38 = icmp ult i16 %37, 512
  %39 = zext i16 %37 to i32
  %40 = select i1 %38, i32 %39, i32 -4
  br label %41

41:                                               ; preds = %34, %28, %23, %19, %17, %13, %13, %13, %13, %13, %13, %7
  %42 = phi i32 [ %18, %17 ], [ -1, %7 ], [ -2, %13 ], [ -3, %19 ], [ -4, %28 ], [ -4, %23 ], [ -2, %13 ], [ -2, %13 ], [ -2, %13 ], [ -2, %13 ], [ -2, %13 ], [ %40, %34 ]
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 256)
  %44 = trunc i32 %43 to i8
  %45 = getelementptr [256 x i8], ptr %2, i32 0, i32 %8
  store i8 %44, ptr %45, align 1
  %46 = add nuw nsw i32 %8, 1
  %47 = icmp eq i32 %46, 256
  br i1 %47, label %48, label %7

48:                                               ; preds = %41
  tail call void @console_unlock() #14
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 256, i32 -1090519040) #15, !srcloc !14
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = tail call ptr @llvm.thread.pointer() #14
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #16, !srcloc !11
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %58 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 256) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 -14
  br label %61

61:                                               ; preds = %52, %48
  %62 = phi i32 [ -14, %48 ], [ %60, %52 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #14
  ret i32 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @conv_uni_to_pc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp sgt i32 %1, 65535
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 32
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  switch i32 %1, label %7 [
    i32 65279, label %35
    i32 8207, label %35
    i32 8206, label %35
    i32 8205, label %35
    i32 8204, label %35
    i32 8203, label %35
  ]

7:                                                ; preds = %6
  %8 = and i32 %1, -512
  %9 = icmp eq i32 %8, 61440
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = and i32 %1, 511
  br label %35

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = lshr i32 %1, 11
  %19 = getelementptr [32 x ptr], ptr %15, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = lshr i32 %1, 6
  %24 = and i32 %23, 31
  %25 = getelementptr ptr, ptr %20, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = and i32 %1, 63
  %30 = getelementptr i16, ptr %26, i32 %29
  %31 = load i16, ptr %30, align 2
  %32 = icmp ult i16 %31, 512
  %33 = zext i16 %31 to i32
  %34 = select i1 %32, i32 %33, i32 -4
  br label %35

35:                                               ; preds = %28, %22, %17, %12, %10, %6, %6, %6, %6, %6, %6, %4, %2
  %36 = phi i32 [ %11, %10 ], [ -4, %2 ], [ -1, %4 ], [ -2, %6 ], [ -3, %12 ], [ -4, %22 ], [ -4, %17 ], [ -2, %6 ], [ -2, %6 ], [ -2, %6 ], [ -2, %6 ], [ -2, %6 ], [ %34, %28 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_set_trans_new(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [256 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(512) %2, i8 0, i32 512, i1 false), !annotation !8
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 512, i32 -1090519040) #15, !srcloc !9
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !10

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #14
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #16, !srcloc !11
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 512) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 512, %1 ]
  %16 = sub i32 512, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #14
  br label %19

18:                                               ; preds = %6
  call void @console_lock() #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(512) getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), ptr noundef nonnull align 2 dereferenceable(512) %2, i32 512, i1 false)
  call fastcc void @update_user_maps()
  call void @console_unlock() #14
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ 0, %18 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #14
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_get_trans_new(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [256 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #14
  tail call void @console_lock() #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(512) %2, ptr noundef align 2 dereferenceable(512) getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), i32 512, i1 false)
  tail call void @console_unlock() #14
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 512, i32 -1090519040) #15, !srcloc !14
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #14
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #16, !srcloc !11
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %12 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 512) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 -14
  br label %15

15:                                               ; preds = %6, %1
  %16 = phi i32 [ -14, %1 ], [ %14, %6 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #14
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @con_free_unimap(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  store ptr null, ptr %3, align 4
  %7 = getelementptr inbounds %struct.uni_pagedir, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %4)
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %12

12:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @con_release_unimap(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @dflt, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @dflt, align 4
  br label %5

5:                                                ; preds = %4, %1
  br label %6

6:                                                ; preds = %75, %5
  %7 = phi i32 [ %76, %75 ], [ 0, %5 ]
  %8 = getelementptr [32 x ptr], ptr %0, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %12) #14
  %13 = getelementptr ptr, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #14
  %15 = getelementptr ptr, ptr %9, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #14
  %17 = getelementptr ptr, ptr %9, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #14
  %19 = getelementptr ptr, ptr %9, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #14
  %21 = getelementptr ptr, ptr %9, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #14
  %23 = getelementptr ptr, ptr %9, i32 6
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #14
  %25 = getelementptr ptr, ptr %9, i32 7
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #14
  %27 = getelementptr ptr, ptr %9, i32 8
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #14
  %29 = getelementptr ptr, ptr %9, i32 9
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #14
  %31 = getelementptr ptr, ptr %9, i32 10
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #14
  %33 = getelementptr ptr, ptr %9, i32 11
  %34 = load ptr, ptr %33, align 4
  tail call void @kfree(ptr noundef %34) #14
  %35 = getelementptr ptr, ptr %9, i32 12
  %36 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %36) #14
  %37 = getelementptr ptr, ptr %9, i32 13
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #14
  %39 = getelementptr ptr, ptr %9, i32 14
  %40 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %40) #14
  %41 = getelementptr ptr, ptr %9, i32 15
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #14
  %43 = getelementptr ptr, ptr %9, i32 16
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %44) #14
  %45 = getelementptr ptr, ptr %9, i32 17
  %46 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %46) #14
  %47 = getelementptr ptr, ptr %9, i32 18
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #14
  %49 = getelementptr ptr, ptr %9, i32 19
  %50 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %50) #14
  %51 = getelementptr ptr, ptr %9, i32 20
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #14
  %53 = getelementptr ptr, ptr %9, i32 21
  %54 = load ptr, ptr %53, align 4
  tail call void @kfree(ptr noundef %54) #14
  %55 = getelementptr ptr, ptr %9, i32 22
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #14
  %57 = getelementptr ptr, ptr %9, i32 23
  %58 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %58) #14
  %59 = getelementptr ptr, ptr %9, i32 24
  %60 = load ptr, ptr %59, align 4
  tail call void @kfree(ptr noundef %60) #14
  %61 = getelementptr ptr, ptr %9, i32 25
  %62 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %62) #14
  %63 = getelementptr ptr, ptr %9, i32 26
  %64 = load ptr, ptr %63, align 4
  tail call void @kfree(ptr noundef %64) #14
  %65 = getelementptr ptr, ptr %9, i32 27
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #14
  %67 = getelementptr ptr, ptr %9, i32 28
  %68 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %68) #14
  %69 = getelementptr ptr, ptr %9, i32 29
  %70 = load ptr, ptr %69, align 4
  tail call void @kfree(ptr noundef %70) #14
  %71 = getelementptr ptr, ptr %9, i32 30
  %72 = load ptr, ptr %71, align 4
  tail call void @kfree(ptr noundef %72) #14
  %73 = getelementptr ptr, ptr %9, i32 31
  %74 = load ptr, ptr %73, align 4
  tail call void @kfree(ptr noundef %74) #14
  tail call void @kfree(ptr noundef nonnull %9) #14
  br label %75

75:                                               ; preds = %11, %6
  store ptr null, ptr %8, align 4
  %76 = add nuw nsw i32 %7, 1
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %6

78:                                               ; preds = %75
  %79 = getelementptr %struct.uni_pagedir, ptr %0, i32 0, i32 3, i32 0
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #14
  store ptr null, ptr %79, align 4
  %81 = getelementptr %struct.uni_pagedir, ptr %0, i32 0, i32 3, i32 1
  %82 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %82) #14
  store ptr null, ptr %81, align 4
  %83 = getelementptr %struct.uni_pagedir, ptr %0, i32 0, i32 3, i32 2
  %84 = load ptr, ptr %83, align 4
  tail call void @kfree(ptr noundef %84) #14
  store ptr null, ptr %83, align 4
  %85 = getelementptr %struct.uni_pagedir, ptr %0, i32 0, i32 3, i32 3
  %86 = load ptr, ptr %85, align 4
  tail call void @kfree(ptr noundef %86) #14
  store ptr null, ptr %85, align 4
  %87 = getelementptr inbounds %struct.uni_pagedir, ptr %0, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  tail call void @kfree(ptr noundef %88) #14
  store ptr null, ptr %87, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_clear_unimap(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void @console_lock() #14
  %2 = tail call fastcc i32 @con_do_clear_unimap(ptr noundef %0)
  tail call void @console_unlock() #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @con_do_clear_unimap(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uni_pagedir, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 156) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %22

15:                                               ; preds = %6
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 156) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %7, align 4
  br label %32

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %17, %15 ], [ %13, %11 ]
  %24 = getelementptr inbounds %struct.uni_pagedir, ptr %23, i32 0, i32 1
  store i32 1, ptr %24, align 8
  %25 = load ptr, ptr %2, align 4
  store ptr %23, ptr %25, align 4
  br label %32

26:                                               ; preds = %6
  %27 = load ptr, ptr @dflt, align 4
  %28 = icmp eq ptr %4, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store ptr null, ptr @dflt, align 4
  br label %30

30:                                               ; preds = %29, %26
  store i32 %8, ptr %7, align 4
  %31 = getelementptr inbounds %struct.uni_pagedir, ptr %4, i32 0, i32 2
  store i32 0, ptr %31, align 4
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %4)
  br label %32

32:                                               ; preds = %30, %22, %19, %11
  %33 = phi i32 [ -12, %19 ], [ 0, %30 ], [ 0, %22 ], [ -12, %11 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_set_unimap(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %202, label %5

5:                                                ; preds = %3
  %6 = zext i16 %1 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = tail call ptr @vmemdup_user(ptr noundef %2, i32 noundef %7) #14
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  br label %202

12:                                               ; preds = %5
  tail call void @console_lock() #14
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %200, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.uni_pagedir, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @con_do_clear_unimap(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %200

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.uni_pagedir, ptr %26, i32 0, i32 2
  br label %28

28:                                               ; preds = %94, %24
  %29 = phi i16 [ 0, %24 ], [ %95, %94 ]
  %30 = phi i32 [ 0, %24 ], [ %96, %94 ]
  %31 = getelementptr [32 x ptr], ptr %15, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %92, label %34

34:                                               ; preds = %88, %28
  %35 = phi i16 [ %89, %88 ], [ %29, %28 ]
  %36 = phi i32 [ %90, %88 ], [ 0, %28 ]
  %37 = getelementptr ptr, ptr %32, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %86, label %40

40:                                               ; preds = %82, %34
  %41 = phi i16 [ %84, %82 ], [ %35, %34 ]
  %42 = phi i32 [ %83, %82 ], [ 0, %34 ]
  %43 = getelementptr i16, ptr %38, i32 %42
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, -1
  br i1 %45, label %82, label %46

46:                                               ; preds = %40
  %47 = zext i16 %41 to i32
  %48 = lshr i32 %47, 11
  %49 = getelementptr [32 x ptr], ptr %26, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 128) #17
  store ptr %54, ptr %49, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %52
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %54, i8 0, i32 128, i1 false) #14
  br label %57

57:                                               ; preds = %56, %46
  %58 = phi ptr [ %50, %46 ], [ %54, %56 ]
  %59 = lshr i32 %47, 6
  %60 = and i32 %59, 31
  %61 = getelementptr ptr, ptr %58, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3264, i32 noundef 128) #17
  store ptr %66, ptr %61, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %66, i8 -1, i32 128, i1 false) #14
  br label %69

69:                                               ; preds = %68, %57
  %70 = phi ptr [ %62, %57 ], [ %66, %68 ]
  %71 = and i32 %47, 63
  %72 = getelementptr i16, ptr %70, i32 %71
  store i16 %44, ptr %72, align 2
  %73 = zext i16 %44 to i32
  %74 = shl i32 %73, 20
  %75 = or i32 %74, %47
  %76 = load i32, ptr %27, align 4
  %77 = add i32 %75, %76
  store i32 %77, ptr %27, align 4
  br label %82

78:                                               ; preds = %64, %52
  %79 = load i32, ptr %18, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %18, align 4
  %81 = load ptr, ptr %13, align 4
  store ptr %15, ptr %81, align 4
  tail call fastcc void @con_release_unimap(ptr noundef %26)
  tail call void @kfree(ptr noundef %26) #14
  br label %200

82:                                               ; preds = %69, %40
  %83 = add nuw nsw i32 %42, 1
  %84 = add i16 %41, 1
  %85 = icmp eq i32 %83, 64
  br i1 %85, label %88, label %40

86:                                               ; preds = %34
  %87 = add i16 %35, 64
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i16 [ %87, %86 ], [ %84, %82 ]
  %90 = add nuw nsw i32 %36, 1
  %91 = icmp eq i32 %90, 32
  br i1 %91, label %94, label %34

92:                                               ; preds = %28
  %93 = add i16 %29, 2048
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i16 [ %93, %92 ], [ %89, %88 ]
  %96 = add nuw nsw i32 %30, 1
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %102, label %28

98:                                               ; preds = %17
  %99 = load ptr, ptr @dflt, align 4
  %100 = icmp eq ptr %15, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store ptr null, ptr @dflt, align 4
  br label %102

102:                                              ; preds = %101, %98, %94
  %103 = phi ptr [ %15, %101 ], [ %15, %98 ], [ %26, %94 ]
  %104 = getelementptr inbounds %struct.uni_pagedir, ptr %103, i32 0, i32 2
  br label %105

105:                                              ; preds = %143, %102
  %106 = phi ptr [ %8, %102 ], [ %146, %143 ]
  %107 = phi i32 [ 0, %102 ], [ %144, %143 ]
  %108 = phi i16 [ %1, %102 ], [ %145, %143 ]
  %109 = load i16, ptr %106, align 2
  %110 = getelementptr inbounds %struct.unipair, ptr %106, i32 0, i32 1
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %109 to i32
  %113 = lshr i32 %112, 11
  %114 = getelementptr [32 x ptr], ptr %103, i32 0, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3264, i32 noundef 128) #17
  store ptr %119, ptr %114, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %143, label %121

121:                                              ; preds = %117
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %119, i8 0, i32 128, i1 false) #14
  br label %122

122:                                              ; preds = %121, %105
  %123 = phi ptr [ %115, %105 ], [ %119, %121 ]
  %124 = lshr i32 %112, 6
  %125 = and i32 %124, 31
  %126 = getelementptr ptr, ptr %123, i32 %125
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %131 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 3264, i32 noundef 128) #17
  store ptr %131, ptr %126, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %143, label %133

133:                                              ; preds = %129
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %131, i8 -1, i32 128, i1 false) #14
  br label %134

134:                                              ; preds = %133, %122
  %135 = phi ptr [ %127, %122 ], [ %131, %133 ]
  %136 = and i32 %112, 63
  %137 = getelementptr i16, ptr %135, i32 %136
  store i16 %111, ptr %137, align 2
  %138 = zext i16 %111 to i32
  %139 = shl i32 %138, 20
  %140 = or i32 %139, %112
  %141 = load i32, ptr %104, align 4
  %142 = add i32 %141, %140
  store i32 %142, ptr %104, align 4
  br label %143

143:                                              ; preds = %134, %129, %117
  %144 = phi i32 [ %107, %134 ], [ -12, %117 ], [ -12, %129 ]
  %145 = add i16 %108, -1
  %146 = getelementptr %struct.unipair, ptr %106, i32 1
  %147 = icmp eq i16 %145, 0
  br i1 %147, label %148, label %105

148:                                              ; preds = %143
  %149 = tail call fastcc i32 @con_unify_unimap(ptr noundef %0, ptr noundef %103)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %200

151:                                              ; preds = %148
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %103, i32 noundef 0)
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %103, i32 noundef 1)
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %103, i32 noundef 2)
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %103, i32 noundef 3)
  %152 = icmp eq ptr %103, null
  br i1 %152, label %200, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.uni_pagedir, ptr %103, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %159 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %158, i32 noundef 3264, i32 noundef 1024) #17
  store ptr %159, ptr %154, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %200, label %161

161:                                              ; preds = %157, %153
  %162 = phi ptr [ %155, %153 ], [ %159, %157 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(1024) %162, i8 0, i32 1024, i1 false) #14
  br label %163

163:                                              ; preds = %197, %161
  %164 = phi i32 [ 0, %161 ], [ %198, %197 ]
  %165 = getelementptr [32 x ptr], ptr %103, i32 0, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %197, label %168

168:                                              ; preds = %163
  %169 = shl i32 %164, 11
  br label %170

170:                                              ; preds = %194, %168
  %171 = phi i32 [ 0, %168 ], [ %195, %194 ]
  %172 = getelementptr ptr, ptr %166, i32 %171
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %194, label %175

175:                                              ; preds = %170
  %176 = shl i32 %171, 6
  %177 = add nuw nsw i32 %176, %169
  br label %178

178:                                              ; preds = %191, %175
  %179 = phi i32 [ 0, %175 ], [ %192, %191 ]
  %180 = getelementptr i16, ptr %173, i32 %179
  %181 = load i16, ptr %180, align 2
  %182 = icmp ult i16 %181, 512
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = zext i16 %181 to i32
  %185 = getelementptr i16, ptr %162, i32 %184
  %186 = load i16, ptr %185, align 2
  %187 = icmp ult i16 %186, 32
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = add nuw nsw i32 %177, %179
  %190 = trunc i32 %189 to i16
  store i16 %190, ptr %185, align 2
  br label %191

191:                                              ; preds = %188, %183, %178
  %192 = add nuw nsw i32 %179, 1
  %193 = icmp eq i32 %192, 64
  br i1 %193, label %194, label %178

194:                                              ; preds = %191, %170
  %195 = add nuw nsw i32 %171, 1
  %196 = icmp eq i32 %195, 32
  br i1 %196, label %197, label %170

197:                                              ; preds = %194, %163
  %198 = add nuw nsw i32 %164, 1
  %199 = icmp eq i32 %198, 32
  br i1 %199, label %200, label %163

200:                                              ; preds = %197, %157, %151, %148, %78, %21, %12
  %201 = phi i32 [ %144, %148 ], [ -22, %12 ], [ %144, %151 ], [ %144, %157 ], [ %22, %21 ], [ -12, %78 ], [ %144, %197 ]
  tail call void @console_unlock() #14
  tail call void @kvfree(ptr noundef %8) #14
  br label %202

202:                                              ; preds = %200, %10, %3
  %203 = phi i32 [ %11, %10 ], [ %201, %200 ], [ 0, %3 ]
  ret i32 %203
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @con_unify_unimap(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.uni_pagedir, ptr %1, i32 0, i32 2
  br label %4

4:                                                ; preds = %60, %2
  %5 = phi i32 [ 0, %2 ], [ %61, %60 ]
  %6 = tail call i32 @vc_cons_allocated(i32 noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %60, label %8

8:                                                ; preds = %4
  %9 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 49
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %13, %1
  %16 = or i1 %14, %15
  br i1 %16, label %60, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.uni_pagedir, ptr %13, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %49, %17
  %23 = phi i32 [ %50, %49 ], [ 0, %17 ]
  %24 = getelementptr [32 x ptr], ptr %1, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr [32 x ptr], ptr %13, i32 0, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ne ptr %25, null
  %29 = icmp ne ptr %27, null
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = select i1 %28, i1 %29, i1 false
  br i1 %32, label %33, label %60

33:                                               ; preds = %46, %31
  %34 = phi i32 [ %47, %46 ], [ 0, %31 ]
  %35 = getelementptr ptr, ptr %25, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr ptr, ptr %27, i32 %34
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %37, label %41, label %42

41:                                               ; preds = %33
  br i1 %40, label %46, label %52

42:                                               ; preds = %33
  br i1 %40, label %52, label %43

43:                                               ; preds = %42
  %44 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %36, ptr noundef nonnull dereferenceable(128) %39, i32 128)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %41
  %47 = add nuw nsw i32 %34, 1
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %33

49:                                               ; preds = %46, %22
  %50 = add nuw nsw i32 %23, 1
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %54, label %22

52:                                               ; preds = %43, %42, %41
  %53 = icmp eq i32 %23, 32
  br i1 %53, label %54, label %60

54:                                               ; preds = %52, %49
  %55 = getelementptr inbounds %struct.uni_pagedir, ptr %13, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %59 = load ptr, ptr %58, align 4
  store ptr %13, ptr %59, align 4
  tail call fastcc void @con_release_unimap(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #14
  br label %63

60:                                               ; preds = %52, %31, %17, %8, %4
  %61 = add nuw nsw i32 %5, 1
  %62 = icmp eq i32 %61, 63
  br i1 %62, label %63, label %4

63:                                               ; preds = %60, %54
  %64 = phi i32 [ 1, %54 ], [ 0, %60 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_inverse_transl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = getelementptr %struct.uni_pagedir, ptr %1, i32 0, i32 3, i32 %2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 512) #17
  store ptr %12, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %60, label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %8, %6 ], [ %12, %10 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(512) %15, i8 0, i32 512, i1 false)
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  br label %17

17:                                               ; preds = %57, %14
  %18 = phi i32 [ 0, %14 ], [ %58, %57 ]
  %19 = getelementptr i16, ptr %4, i32 %18
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ult i16 %20, 32
  br i1 %22, label %57, label %23

23:                                               ; preds = %17
  switch i16 %20, label %24 [
    i16 -257, label %57
    i16 8207, label %57
    i16 8206, label %57
    i16 8205, label %57
    i16 8204, label %57
    i16 8203, label %57
  ]

24:                                               ; preds = %23
  %25 = and i32 %21, 65024
  %26 = icmp eq i32 %25, 61440
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = and i32 %21, 511
  br label %50

29:                                               ; preds = %24
  %30 = load ptr, ptr %16, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = lshr i32 %21, 11
  %35 = getelementptr [32 x ptr], ptr %31, i32 0, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %33
  %39 = lshr i32 %21, 6
  %40 = and i32 %39, 31
  %41 = getelementptr ptr, ptr %36, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = and i32 %21, 63
  %46 = getelementptr i16, ptr %42, i32 %45
  %47 = load i16, ptr %46, align 2
  %48 = icmp ult i16 %47, 512
  %49 = zext i16 %47 to i32
  br i1 %48, label %50, label %57

50:                                               ; preds = %44, %27
  %51 = phi i32 [ %28, %27 ], [ %49, %44 ]
  %52 = getelementptr i8, ptr %15, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = icmp ult i8 %53, 32
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = trunc i32 %18 to i8
  store i8 %56, ptr %52, align 1
  br label %57

57:                                               ; preds = %55, %50, %44, %38, %33, %29, %23, %23, %23, %23, %23, %23, %17
  %58 = add nuw nsw i32 %18, 1
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %60, label %17

60:                                               ; preds = %57, %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_set_default_unimap(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr @dflt, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %140, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uni_pagedir, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = load ptr, ptr %5, align 4
  store ptr %2, ptr %13, align 4
  %14 = icmp eq ptr %7, null
  br i1 %14, label %140, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.uni_pagedir, ptr %7, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %140

20:                                               ; preds = %15
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %7)
  tail call void @kfree(ptr noundef nonnull %7) #14
  br label %140

21:                                               ; preds = %1
  %22 = tail call fastcc i32 @con_do_clear_unimap(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %140

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uni_pagedir, ptr %27, i32 0, i32 2
  br label %29

29:                                               ; preds = %79, %24
  %30 = phi ptr [ @dfont_unitable, %24 ], [ %81, %79 ]
  %31 = phi i32 [ 0, %24 ], [ %80, %79 ]
  %32 = phi i32 [ 0, %24 ], [ %82, %79 ]
  %33 = getelementptr [0 x i8], ptr @dfont_unicount, i32 0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %29
  %37 = zext i8 %34 to i32
  %38 = trunc i32 %32 to i16
  %39 = shl i32 %32, 20
  br label %40

40:                                               ; preds = %75, %36
  %41 = phi ptr [ %30, %36 ], [ %44, %75 ]
  %42 = phi i32 [ %31, %36 ], [ %76, %75 ]
  %43 = phi i32 [ %37, %36 ], [ %77, %75 ]
  %44 = getelementptr i16, ptr %41, i32 1
  %45 = load i16, ptr %41, align 2
  %46 = zext i16 %45 to i32
  %47 = lshr i32 %46, 11
  %48 = getelementptr [32 x ptr], ptr %27, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 128) #17
  store ptr %53, ptr %48, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %53, i8 0, i32 128, i1 false) #14
  br label %56

56:                                               ; preds = %55, %40
  %57 = phi ptr [ %49, %40 ], [ %53, %55 ]
  %58 = lshr i32 %46, 6
  %59 = and i32 %58, 31
  %60 = getelementptr ptr, ptr %57, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 128) #17
  store ptr %65, ptr %60, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %65, i8 -1, i32 128, i1 false) #14
  br label %68

68:                                               ; preds = %67, %56
  %69 = phi ptr [ %61, %56 ], [ %65, %67 ]
  %70 = and i32 %46, 63
  %71 = getelementptr i16, ptr %69, i32 %70
  store i16 %38, ptr %71, align 2
  %72 = or i32 %39, %46
  %73 = load i32, ptr %28, align 4
  %74 = add i32 %72, %73
  store i32 %74, ptr %28, align 4
  br label %75

75:                                               ; preds = %68, %63, %51
  %76 = phi i32 [ %42, %68 ], [ -12, %51 ], [ -12, %63 ]
  %77 = add nsw i32 %43, -1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %40

79:                                               ; preds = %75, %29
  %80 = phi i32 [ %31, %29 ], [ %76, %75 ]
  %81 = phi ptr [ %30, %29 ], [ %44, %75 ]
  %82 = add nuw nsw i32 %32, 1
  %83 = icmp eq i32 %82, 256
  br i1 %83, label %84, label %29

84:                                               ; preds = %79
  %85 = tail call fastcc i32 @con_unify_unimap(ptr noundef %0, ptr noundef %27)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %27, i32 noundef 0)
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %27, i32 noundef 1)
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %27, i32 noundef 2)
  tail call fastcc void @set_inverse_transl(ptr noundef %0, ptr noundef %27, i32 noundef 3)
  %88 = icmp eq ptr %27, null
  br i1 %88, label %139, label %92

89:                                               ; preds = %84
  %90 = load ptr, ptr %25, align 4
  %91 = load ptr, ptr %90, align 4
  store ptr %91, ptr @dflt, align 4
  br label %140

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.uni_pagedir, ptr %27, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %98 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3264, i32 noundef 1024) #17
  store ptr %98, ptr %93, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %139, label %100

100:                                              ; preds = %96, %92
  %101 = phi ptr [ %94, %92 ], [ %98, %96 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(1024) %101, i8 0, i32 1024, i1 false) #14
  br label %102

102:                                              ; preds = %136, %100
  %103 = phi i32 [ 0, %100 ], [ %137, %136 ]
  %104 = getelementptr [32 x ptr], ptr %27, i32 0, i32 %103
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %136, label %107

107:                                              ; preds = %102
  %108 = shl i32 %103, 11
  br label %109

109:                                              ; preds = %133, %107
  %110 = phi i32 [ 0, %107 ], [ %134, %133 ]
  %111 = getelementptr ptr, ptr %105, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %133, label %114

114:                                              ; preds = %109
  %115 = shl i32 %110, 6
  %116 = add nuw nsw i32 %115, %108
  br label %117

117:                                              ; preds = %130, %114
  %118 = phi i32 [ 0, %114 ], [ %131, %130 ]
  %119 = getelementptr i16, ptr %112, i32 %118
  %120 = load i16, ptr %119, align 2
  %121 = icmp ult i16 %120, 512
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = zext i16 %120 to i32
  %124 = getelementptr i16, ptr %101, i32 %123
  %125 = load i16, ptr %124, align 2
  %126 = icmp ult i16 %125, 32
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = add nuw nsw i32 %116, %118
  %129 = trunc i32 %128 to i16
  store i16 %129, ptr %124, align 2
  br label %130

130:                                              ; preds = %127, %122, %117
  %131 = add nuw nsw i32 %118, 1
  %132 = icmp eq i32 %131, 64
  br i1 %132, label %133, label %117

133:                                              ; preds = %130, %109
  %134 = add nuw nsw i32 %110, 1
  %135 = icmp eq i32 %134, 32
  br i1 %135, label %136, label %109

136:                                              ; preds = %133, %102
  %137 = add nuw nsw i32 %103, 1
  %138 = icmp eq i32 %137, 32
  br i1 %138, label %139, label %102

139:                                              ; preds = %136, %96, %87
  store ptr %27, ptr @dflt, align 4
  br label %140

140:                                              ; preds = %139, %89, %21, %20, %15, %9, %4
  %141 = phi i32 [ %80, %89 ], [ %80, %139 ], [ 0, %4 ], [ 0, %20 ], [ 0, %15 ], [ 0, %9 ], [ %22, %21 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_copy_unimap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 49
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %10, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  store ptr null, ptr %9, align 4
  %15 = getelementptr inbounds %struct.uni_pagedir, ptr %10, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %10) #14
  tail call void @kfree(ptr noundef nonnull %10) #14
  br label %20

20:                                               ; preds = %19, %14, %12
  %21 = load ptr, ptr %3, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uni_pagedir, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = load ptr, ptr %8, align 4
  store ptr %22, ptr %26, align 4
  br label %27

27:                                               ; preds = %20, %7, %2
  %28 = phi i32 [ 0, %20 ], [ -22, %2 ], [ 0, %7 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_get_unimap(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = zext i16 %1 to i32
  %6 = shl nuw nsw i32 %5, 2
  %7 = tail call noalias ptr @kvmalloc_node(i32 noundef %6, i32 noundef 3264, i32 noundef -1) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %89, label %9

9:                                                ; preds = %4
  tail call void @console_lock() #14
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %14

14:                                               ; preds = %58, %9
  %15 = phi i32 [ %60, %58 ], [ 0, %9 ]
  %16 = phi i16 [ %59, %58 ], [ 0, %9 ]
  %17 = getelementptr [32 x ptr], ptr %12, i32 0, i32 %15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %14
  %21 = shl i32 %15, 11
  br label %22

22:                                               ; preds = %54, %20
  %23 = phi i32 [ 0, %20 ], [ %56, %54 ]
  %24 = phi i16 [ %16, %20 ], [ %55, %54 ]
  %25 = phi ptr [ %18, %20 ], [ %26, %54 ]
  %26 = getelementptr ptr, ptr %25, i32 1
  %27 = load ptr, ptr %25, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %22
  %30 = shl i32 %23, 6
  %31 = add nuw nsw i32 %30, %21
  br label %32

32:                                               ; preds = %49, %29
  %33 = phi i32 [ 0, %29 ], [ %51, %49 ]
  %34 = phi i16 [ %24, %29 ], [ %50, %49 ]
  %35 = phi ptr [ %27, %29 ], [ %52, %49 ]
  %36 = load i16, ptr %35, align 2
  %37 = icmp ugt i16 %36, 511
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = icmp ult i16 %34, %1
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = zext i16 %34 to i32
  %42 = add nuw nsw i32 %31, %33
  %43 = trunc i32 %42 to i16
  %44 = getelementptr %struct.unipair, ptr %7, i32 %41
  store i16 %43, ptr %44, align 2
  %45 = load i16, ptr %35, align 2
  %46 = getelementptr %struct.unipair, ptr %7, i32 %41, i32 1
  store i16 %45, ptr %46, align 2
  br label %47

47:                                               ; preds = %40, %38
  %48 = add i16 %34, 1
  br label %49

49:                                               ; preds = %47, %32
  %50 = phi i16 [ %34, %32 ], [ %48, %47 ]
  %51 = add nuw nsw i32 %33, 1
  %52 = getelementptr i16, ptr %35, i32 1
  %53 = icmp eq i32 %51, 64
  br i1 %53, label %54, label %32

54:                                               ; preds = %49, %22
  %55 = phi i16 [ %24, %22 ], [ %50, %49 ]
  %56 = add nuw nsw i32 %23, 1
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %22

58:                                               ; preds = %54, %14
  %59 = phi i16 [ %16, %14 ], [ %55, %54 ]
  %60 = add nuw nsw i32 %15, 1
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %14

62:                                               ; preds = %58, %9
  %63 = phi i16 [ 0, %9 ], [ %59, %58 ]
  tail call void @console_unlock() #14
  %64 = tail call i16 @llvm.umin.i16(i16 %63, i16 %1)
  %65 = zext i16 %64 to i32
  %66 = shl nuw nsw i32 %65, 2
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %66, i32 -1090519040) #15, !srcloc !14
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = tail call ptr @llvm.thread.pointer() #14
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %73 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %72) #16, !srcloc !11
  %74 = and i32 %73, -13
  %75 = or i32 %74, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %76 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %7, i32 noundef %66) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  br label %77

77:                                               ; preds = %70, %62
  %78 = phi i32 [ %76, %70 ], [ %66, %62 ]
  %79 = icmp eq i32 %78, 0
  %80 = tail call ptr @llvm.thread.pointer() #14
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #16, !srcloc !11
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %85 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i16 %63, i32 -1090519041) #14, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  tail call void @kvfree(ptr noundef nonnull %7) #14
  %86 = icmp ugt i16 %63, %1
  %87 = select i1 %86, i32 -12, i32 0
  %88 = select i1 %79, i32 %87, i32 -14
  br label %89

89:                                               ; preds = %77, %4
  %90 = phi i32 [ -12, %4 ], [ %88, %77 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @conv_8bit_to_uni(i8 noundef zeroext %0) local_unnamed_addr #1 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 3, i32 %2
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = or i32 %2, 61440
  %7 = icmp eq i32 %6, %5
  %8 = select i1 %7, i32 %2, i32 %5
  ret i32 %8
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @conv_uni_to_8bit(i32 noundef %0) local_unnamed_addr #7 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %4 = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 3, i32 %3
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = or i32 %3, 61440
  %10 = icmp eq i32 %9, %6
  %11 = icmp eq i32 %3, %0
  %12 = and i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %3, 1
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %2

16:                                               ; preds = %13, %8, %2
  %17 = phi i32 [ %0, %8 ], [ %3, %2 ], [ -1, %13 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @console_map_init() local_unnamed_addr #8 section ".init.text" {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %3 = tail call i32 @vc_cons_allocated(i32 noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc_data, ptr %7, i32 0, i32 49
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @con_set_default_unimap(ptr noundef %7)
  br label %14

14:                                               ; preds = %12, %5, %1
  %15 = add nuw nsw i32 %2, 1
  %16 = icmp eq i32 %15, 63
  br i1 %16, label %17, label %1

17:                                               ; preds = %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

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
!9 = !{i64 2151773138, i64 2151773163}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 4265189}
!12 = !{i64 4265386}
!13 = !{i64 2151750665}
!14 = !{i64 2151773716, i64 2151773741}
!15 = !{i64 2152718688, i64 2152718968, i64 2152719302, i64 2152719636}
