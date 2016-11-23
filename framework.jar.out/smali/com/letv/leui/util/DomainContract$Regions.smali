.class public Lcom/letv/leui/util/DomainContract$Regions;
.super Ljava/lang/Object;
.source "LeDomainManager.java"

# interfaces
.implements Lcom/letv/leui/util/DomainContract$RegionsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/DomainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Regions"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_INVALID:I = 0x0

.field public static final STATE_OUT_OF_DATE:I = 0x2

.field public static final STATE_UP_TO_DATE:I = 0x3

.field public static final TABLE:Ljava/lang/String; = "regions"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcom/letv/leui/util/DomainContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "regions"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/DomainContract$Regions;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
