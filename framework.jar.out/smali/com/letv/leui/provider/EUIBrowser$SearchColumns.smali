.class public Lcom/letv/leui/provider/EUIBrowser$SearchColumns;
.super Ljava/lang/Object;
.source "EUIBrowser.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/EUIBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchColumns"
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final URL:Ljava/lang/String; = "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
