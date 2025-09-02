#!/usr/bin/perl -w

# catRelAnnis.pl Version 0.9

# this assumes a main directory containing folders each with one corpus
# in the relAnnis format. All folders must contain exactly one corpus.
# usage:
# catRelAnnis.pl [options]
# See help (-h) for options

use Getopt::Std;
use utf8;
binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

my $usage;
{
$usage = <<"_USAGE_";
This script take multiple relAnnis corpora and concatenates them into one relAnnis corpus. 
Each one of the original corpora becomes a subcorpus of the new top-level corpus

Usage:  catRelAnnis.pl [options]

Options:

-h              print this message and quit
-d directory    [d]irectory with the relAnnis source corpus folders (default: same directory as the script)
-c name         name for the new top level [c]orpus (default is "toplevelcorpus")
-r              generate [r]esolver file (use this only if all corpora have resolver_vis_map.tab)


Examples:

Merge all folders in the current directory:
  catRelAnnis.pl

Merge folders and name new corpus my_corpus:
  catRelAnnis.pl -c my_corpus

Merge folders in subfolder corpora relative to script location:
  catRelAnnis.pl -d corpora

Merge folders in absolute folder c:/corpora and create resolver table:
  catRelAnnis.pl -d c:/corpora -r
  
Copyright 2011, Amir Zeldes

This program is free software. You may copy or redistribute it under
the same terms as Perl itself.
_USAGE_
}

### OPTIONS BEGIN ###
%opts = ();
getopts('hd:c:r',\%opts) or die $usage;

#help
if ($opts{h}) {
    print $usage;
    exit;
}

#set toplevelcorpus name
if (!($toplevelcorpus = $opts{c})) {$toplevelcorpus = "toplevelcorpus";}

#get directory of relAnnis corpora
if (!($corp_dir = $opts{d})) {$corp_dir = "";} else {$corp_dir .= "/";}
$corp_dir .= "*";
$corp_dir =~ s/\\/\//;

#check if resolver_vis_map.tab should be generated
if ($opts{r}) {$resolver = 1;}
else {$resolver= 0;}

#scan directory for subdirectories to process
$i = 1;
foreach my $dir (glob "$corp_dir") {
    next if ! -d $dir;              # skip if it's not a directory
    $corpora{$i} = $dir;           # do some processing
	$i++;
}
@my_keys = keys %corpora;
$corp_count = @my_keys;

#Create corpus.tab
$max_corp_id = 0;
$max_corp_pre = 0;
$max_corp_post_temp = 0;
$max_corp_post = 1;
$max_node_id = 0;
$max_text_id = 0;
for ($i=1 ; $i <= $corp_count; $i++)
{ 
	open(FLH,"$corpora{$i}/corpus.tab");
	@array = <FLH>;
	close(FLH);
	if ($i==1)
	{
		open OUTFILE, ">corpus.tab" or die $!;
	}
	else
	{
		open OUTFILE, ">>corpus.tab" or die $!;
	}
	foreach $line (@array)
	{
		if ($line =~ /([0-9]+)\t(.*)\t(DOCUMENT|CORPUS)\t(.*)\t([0-9]+)\t([0-9]+)/)
		{
			$corp_id = $1;
			$corp_name = $2;
			$corp_type = $3;
			$corp_version = $4;
			$corp_pre = $5;
			$corp_post = $6;
				
			$corp_pre += $max_corp_post;
			$corp_post += $max_corp_post;
			$corp_id += $max_corp_id;
			
			if ($max_corp_post_temp < $corp_post) {$max_corp_post_temp = $corp_post;}
		}
		
		print OUTFILE "$corp_id\t$corp_name\t$corp_type\t$corp_version\t$corp_pre\t$corp_post\n"; 

	}


			#corpus_annotation.tab
			open(CORPANNO,"$corpora{$i}/corpus_annotation.tab");
			@array2 = <CORPANNO>;
			close(CORPANNO);
			if ($i==1)
			{
				open OUTFILE2, ">corpus_annotation.tab" or die $!;
			}
			else
			{
				open OUTFILE2, ">>corpus_annotation.tab" or die $!;
			}
			foreach $meta (@array2)
			{
				if ($meta =~ /([0-9]+)\t(.*)\t(.*)\t(.*)/)
				{
					$meta_id = $1 + $max_corp_id;
					print OUTFILE2 "$meta_id\t$2\t$3\t$4\n";
				}
			}
			
			#Create node.tab
			if ($i==1)
			{
				open OUTFILE4, ">node.tab" or die $!;
			}
			else
			{
				open OUTFILE4, ">>node.tab" or die $!;
			}
			open(NODEFILE,"$corpora{$i}/node.tab");
			@array4 = <NODEFILE>;
			close(NODEFILE);
				
			foreach $nodeline (@array4)
			{

					if ($nodeline =~ /([0-9]+)\t([^\t]+)\t([^\t]+)\t(.*)/)
					{
								
					$node_id = $1;
					$node_id += $max_node_id;
					$text_id = $2;
					$text_id += $max_text_id;
					$doc_id = $3;
					$doc_id += $max_corp_id;
					$rest = $4;
					print OUTFILE4 "$node_id\t$text_id\t$doc_id\t$rest\n";

				   }
			}
			close OUTFILE4;
			
			#Create node_annotation.tab
			if ($i==1)
			{
				open OUTFILE4, ">node_annotation.tab" or die $!;
			}
			else
			{
				open OUTFILE4, ">>node_annotation.tab" or die $!;
			}
			open(NODEANNOFILE,"$corpora{$i}/node_annotation.tab");
			@array4 = <NODEANNOFILE>;
			close(NODEANNOFILE);
				
			foreach $nodeline (@array4)
			{

					if ($nodeline =~ /([0-9]+)\t([^\t]+)\t([^\t]+)\t(.*)/)
					{
								
					$nodeanno_id = $1;
					$nodeanno_id += $max_node_id;
					print OUTFILE4 "$nodeanno_id\t$2\t$3\t$4\n";

				   }
			}
			close OUTFILE4;
			
			#Create text.tab
			if ($i==1)
			{
				open OUTFILE4, ">text.tab" or die $!;
			}
			else
			{
				open OUTFILE4, ">>text.tab" or die $!;
			}
			open(TEXTFILE,"$corpora{$i}/text.tab");
			@array4 = <TEXTFILE>;
			close(TEXTFILE);
				
			foreach $textline (@array4)
			{

					if ($textline =~ /([0-9]+)\t([^\t]+)\t(.*)/)
					{
								
					$text_table_id = $1;
					$text_table_id += $max_text_id;
					print OUTFILE4 "$text_table_id\t$2\t$3\n";

				   }
			}
			close OUTFILE4;
			
			$max_node_id = $node_id+1;
			$max_text_id = $text_id+1;
			
		
		$max_corp_id = $corp_id+1;
		$max_corp_pre = $corp_pre+1;
		$max_corp_post = $max_corp_post_temp+1;
}

print OUTFILE "$max_corp_id\t$toplevelcorpus\tCORPUS\tNULL\t0\t$max_corp_post\n" or die "Error: Specified directory does not exist ";
close OUTFILE;

#Create component.tab
$max_comp_id = 0;
for ($i=1 ; $i <= $corp_count; $i++)
{ 
	if ($i==1)
	{
		open OUTFILE, ">component.tab" or die $!;
	}
	else
	{
		open OUTFILE, ">>component.tab" or die $!;
	}
	open(FLH,"$corpora{$i}/component.tab");
	@array = <FLH>;
	close(FLH);
		
	foreach $line (@array)
	{

			if ($line =~ /([0-9]+)\t(.*)\t(.*)\t(.*)/)
			{
						
			$comp_id = $1;
			$comp_id += $max_comp_id;
			print OUTFILE "$comp_id\t$2\t$3\t$4\n";

		   }
	}
	$max_comp_id = $comp_id+1;
}		
close OUTFILE;
	
#Create rank.tab
$max_rank_post = 0;
$max_rank_node_id = 0;
$max_rank_comp = 0;
$max_rank_post_temp = 0;
$max_rank_node_id_temp = 0;
$max_rank_comp_temp = 0;
for ($i=1 ; $i <= $corp_count; $i++)
{ 
	if ($i==1)
	{
		open OUTFILE, ">rank.tab" or die $!;
	}
	else
	{
		open OUTFILE, ">>rank.tab" or die $!;
	}
	open(FLH,"$corpora{$i}/rank.tab");
	@array = <FLH>;
	close(FLH);
		
	foreach $line (@array)
	{

			if ($line =~ /([0-9]+)\t(.*)\t(.*)\t(.*)\t(.*)/)
			{
						
			$rank_pre = $1;
			$rank_post = $2;
			$rank_node_id = $3;
			$rank_comp = $4;
			$rank_parent = $5;
			
			$rank_pre += $max_rank_post;
			$rank_post += $max_rank_post;
			if ($max_rank_post_temp < $rank_post) {$max_rank_post_temp = $rank_post}
			$rank_node_id += $max_rank_node_id;
			if ($max_rank_node_id_temp < $rank_node_id) {$max_rank_node_id_temp = $rank_node_id}
			$rank_comp += $max_rank_comp;
			if ($max_rank_comp_temp < $rank_comp) {$max_rank_comp_temp = $rank_comp}
			if ($rank_parent ne "NULL") {$rank_parent += $max_rank_post;}
			

			print OUTFILE "$rank_pre\t$rank_post\t$rank_node_id\t$rank_comp\t$rank_parent\n";

		   }
	}
	
		#Create edge_annotation.tab
			if ($i==1)
			{
				open OUTFILE3, ">edge_annotation.tab" or die $!;
			}
			else
			{
				open OUTFILE3, ">>edge_annotation.tab" or die $!;
			}
			open(FLH,"$corpora{$i}/edge_annotation.tab");
			@array3 = <FLH>;
			close(FLH);
				
			foreach $edge_anno (@array3)
			{

					if ($edge_anno =~ /([0-9]+)\t(.*)\t(.*)\t(.*)/)
					{
								
					$edge_anno_pre = $1;
					$edge_anno_pre += $max_rank_post;
					print OUTFILE3 "$edge_anno_pre\t$2\t$3\t$4\n";

				   }
			}
			close OUTFILE3;
	
	$max_rank_post = $max_rank_post_temp+1;
	$max_rank_node_id = $max_rank_node_id_temp+1;
	$max_rank_comp = $max_rank_comp_temp+1;
	
}		
close OUTFILE;

#Create resolver_vis_map.tab if desired	
if($resolver == 1)
{
for ($i=1 ; $i <= $corp_count; $i++)
{ 

	open(FLH,"$corpora{$i}/resolver_vis_map.tab");
	@array = <FLH>;
	close(FLH);
		
	foreach $line (@array)
	{

			if ($line =~ /([^\t]+)\t(.*)/)
			{
			$resolver_entries{$2} = $2;			
		   }
	}
}

open OUTFILE, ">resolver_vis_map.tab" or die $!;

while ( my ($key, $value) = each(%resolver_entries) ) {
        print OUTFILE "$toplevelcorpus\t$value\n";
}		
close OUTFILE;
}