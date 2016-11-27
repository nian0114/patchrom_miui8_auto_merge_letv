.class Lcom/android/server/LockSettingsService$5;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPasswordReadPermission(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V
    invoke-static {v0, p1}, Lcom/android/server/LockSettingsService;->access$800(Lcom/android/server/LockSettingsService;I)V

    .line 1113
    return-void
.end method

.method public checkWritePermission(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->checkWritePermission(I)V
    invoke-static {v0, p1}, Lcom/android/server/LockSettingsService;->access$700(Lcom/android/server/LockSettingsService;I)V

    .line 1109
    return-void
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I

    .prologue
    .line 1092
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1096
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1093
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I

    .prologue
    .line 1101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :goto_0
    return-void

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
