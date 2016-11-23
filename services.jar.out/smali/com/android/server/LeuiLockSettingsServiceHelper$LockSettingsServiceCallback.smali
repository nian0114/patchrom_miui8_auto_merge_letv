.class public interface abstract Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;
.super Ljava/lang/Object;
.source "LeuiLockSettingsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LeuiLockSettingsServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LockSettingsServiceCallback"
.end annotation


# virtual methods
.method public abstract checkPasswordReadPermission(I)V
.end method

.method public abstract checkWritePermission(I)V
.end method

.method public abstract getLong(Ljava/lang/String;JI)J
.end method

.method public abstract getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract setLong(Ljava/lang/String;JI)V
.end method
