.class public final Landroid/provider/Telephony$NetMsg$Part;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$NetMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "ct"

.field public static final FILENAME:Ljava/lang/String; = "fn"

.field public static final MSG_ID:Ljava/lang/String; = "mid"

.field public static final SEQ:Ljava/lang/String; = "seq"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final THUMB:Ljava/lang/String; = "thumbnail"

.field public static final UPLOAD:Ljava/lang/String; = "upload"

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4062
    return-void
.end method
