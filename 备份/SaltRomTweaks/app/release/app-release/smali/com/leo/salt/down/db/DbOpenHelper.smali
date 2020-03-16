.class public Lcom/leo/salt/down/db/DbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbOpenHelper.java"


# static fields
.field public static final CREATE_DOWNLOAD_INFO:Ljava/lang/String; = "create table download_info (id integer primary key autoincrement, url text, path text, name text, child_task_count integer, current_length integer, total_length integer, percentage real, status integer, last_modify text, date text)"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table download_info (id integer primary key autoincrement, url text, path text, name text, child_task_count integer, current_length integer, total_length integer, percentage real, status integer, last_modify text, date text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "alter table download_info add column status integer"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
