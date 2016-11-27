.class public final Lcom/android/internal/widget/LockPatternChecker;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;,
        Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockPatternChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static checkLeuiPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 6
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .param p4, "categoryPasswordType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 236
    const-string v1, "LockPatternChecker"

    const-string v2, "LockPatternChecker checkPasswordForCategoryPasswordType "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Lcom/android/internal/widget/LockPatternChecker$6;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$6;-><init>(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    .line 259
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    return-object v0
.end method

.method public static checkLeuiPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 6
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .param p4, "categoryPasswordType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v1, "LockPatternChecker"

    const-string v2, "LockPatternChecker checkPatternForCategoryPasswordType "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/android/internal/widget/LockPatternChecker$3;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$3;-><init>(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    .line 149
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-object v0
.end method

.method public static checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
    .locals 2
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/android/internal/widget/LockPatternChecker$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternChecker$5;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    .line 219
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-object v0
.end method

.method public static checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
    .locals 2
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v0, Lcom/android/internal/widget/LockPatternChecker$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternChecker$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    .line 110
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-object v0
.end method

.method public static verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .locals 8
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Lcom/android/internal/widget/LockPatternChecker$4;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternChecker$4;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V

    .line 185
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[B>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-object v1
.end method

.method public static verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .locals 8
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI",
            "Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternChecker$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternChecker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V

    .line 76
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[B>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    return-object v1
.end method
