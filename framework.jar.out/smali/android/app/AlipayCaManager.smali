.class public Landroid/app/AlipayCaManager;
.super Ljava/lang/Object;
.source "AlipayCaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayCaManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/IAlipayCaManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/IAlipayCaManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IAlipayCaManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AlipayCaManager"

    const-string v1, "AlipayCaManager start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/app/AlipayCaManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/AlipayCaManager;->mService:Landroid/app/IAlipayCaManager;

    return-void
.end method


# virtual methods
.method public invokeAlipayCaCmd([B)[B
    .locals 4
    .param p1, "param"    # [B

    .prologue
    :try_start_0
    const-string v1, "AlipayCaManager"

    const-string v2, "invokeAlipayCaCmd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/AlipayCaManager;->mService:Landroid/app/IAlipayCaManager;

    if-eqz v1, :cond_0

    const-string v1, "AlipayCaManager"

    const-string v2, "mService != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/AlipayCaManager;->mService:Landroid/app/IAlipayCaManager;

    invoke-interface {v1, p1}, Landroid/app/IAlipayCaManager;->invokeAlipayCaCmd([B)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "AlipayCaManager"

    const-string v2, "mService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AlipayCaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeAlipayCaCmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
