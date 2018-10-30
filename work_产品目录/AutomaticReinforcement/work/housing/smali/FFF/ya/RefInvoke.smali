.class public LFFF/ya/RefInvoke;
.super Ljava/lang/Object;
.source "RefInvoke.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 95
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    .line 96
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_29

    :catch_16
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29

    :catch_1b
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_29

    :catch_20
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_29

    :catch_25
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStaticFieldOjbect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 128
    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 129
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_11} :catch_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_11} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_11} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_11} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_11} :catch_12

    return-object p0

    .line 145
    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2a

    .line 142
    :catch_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 139
    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a

    .line 136
    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2a

    .line 133
    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_2a
    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 59
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_10} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2e

    :catch_16
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2e

    :catch_1b
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2e

    :catch_20
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2e

    :catch_25
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object p0

    invoke-virtual {p0, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_d} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_d} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_d} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_d} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    return-object p0

    .line 40
    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2b

    .line 37
    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2b

    .line 34
    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2b

    .line 31
    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2b

    .line 28
    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2b

    .line 25
    :catch_27
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_2b
    return-object v0
.end method

.method public static setFieldOjbect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_f} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_28

    :catch_10
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_28

    :catch_15
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    :catch_1a
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_28

    :catch_24
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_28
    return-void
.end method

.method public static setStaticOjbect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_29

    :catch_11
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_29

    :catch_16
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29

    :catch_1b
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_29

    :catch_20
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_29

    :catch_25
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_29
    return-void
.end method
