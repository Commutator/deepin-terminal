/* gee-1.0.vapi generated by valac 0.24.0.89-24e8-dirty, do not modify. */

[CCode (gir_namespace = "Gee", gir_version = "1.0")]
namespace Gee {
	namespace Functions {
		[CCode (cheader_filename = "gee.h")]
		public static GLib.CompareFunc get_compare_func_for (GLib.Type t);
		[CCode (cheader_filename = "gee.h")]
		public static GLib.EqualFunc get_equal_func_for (GLib.Type t);
		[CCode (cheader_filename = "gee.h")]
		public static GLib.HashFunc get_hash_func_for (GLib.Type t);
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractCollection<G> : GLib.Object, Gee.Iterable<G>, Gee.Collection<G> {
		public AbstractCollection ();
		public abstract bool add (G item);
		public virtual bool add_all (Gee.Collection<G> collection);
		public abstract void clear ();
		public abstract bool contains (G item);
		public virtual bool contains_all (Gee.Collection<G> collection);
		public abstract Gee.Iterator<G> iterator ();
		public abstract bool remove (G item);
		public virtual bool remove_all (Gee.Collection<G> collection);
		public virtual bool retain_all (Gee.Collection<G> collection);
		public virtual G[] to_array ();
		public virtual bool is_empty { get; }
		public virtual Gee.Collection<G> read_only_view { owned get; }
		public abstract int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractList<G> : Gee.AbstractCollection<G>, Gee.List<G> {
		public AbstractList ();
		public virtual G first ();
		public abstract new G @get (int index);
		public abstract int index_of (G item);
		public abstract void insert (int index, G item);
		public virtual void insert_all (int index, Gee.Collection<G> collection);
		public virtual G last ();
		public abstract Gee.ListIterator<G> list_iterator ();
		public abstract G remove_at (int index);
		public abstract new void @set (int index, G item);
		public abstract Gee.List<G>? slice (int start, int stop);
		public virtual Gee.List<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractMap<K,V> : GLib.Object, Gee.Iterable<Gee.Map.Entry<K,V>>, Gee.Map<K,V> {
		public AbstractMap ();
		public abstract void clear ();
		public abstract new V @get (K key);
		public abstract bool has (K key, V value);
		public virtual bool has_all (Gee.Map<K,V> map);
		public abstract bool has_key (K key);
		public abstract Gee.MapIterator<K,V> map_iterator ();
		public abstract new void @set (K key, V value);
		public virtual void set_all (Gee.Map<K,V> map);
		public abstract bool unset (K key, out V value = null);
		public virtual bool unset_all (Gee.Map<K,V> map);
		public abstract Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		public virtual bool is_empty { get; }
		public abstract Gee.Set<K> keys { owned get; }
		public virtual Gee.Map<K,V> read_only_view { owned get; }
		public abstract int size { get; }
		public abstract Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractMultiMap<K,V> : GLib.Object, Gee.MultiMap<K,V> {
		protected Gee.Map<K,Gee.Collection<V>> _storage_map;
		public AbstractMultiMap (Gee.Map<K,Gee.Collection<V>> storage_map);
		protected abstract Gee.MultiSet<K> create_multi_key_set ();
		protected abstract Gee.Collection<V> create_value_storage ();
		protected abstract GLib.EqualFunc get_value_equal_func ();
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractMultiSet<G> : Gee.AbstractCollection<G>, Gee.MultiSet<G> {
		protected Gee.Map<G,int> _storage_map;
		public AbstractMultiSet (Gee.Map<G,int> storage_map);
		public override bool add (G item);
		public override void clear ();
		public override bool contains (G item);
		public override Gee.Iterator<G> iterator ();
		public override bool remove (G item);
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractQueue<G> : Gee.AbstractCollection<G>, Gee.Queue<G> {
		public AbstractQueue ();
		public abstract int drain (Gee.Collection<G> recipient, int amount = -1);
		public abstract bool offer (G element);
		public abstract G peek ();
		public abstract G poll ();
		public abstract int capacity { get; }
		public abstract bool is_full { get; }
		public abstract int remaining_capacity { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractSet<G> : Gee.AbstractCollection<G>, Gee.Set<G> {
		public AbstractSet ();
		public virtual Gee.Set<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class ArrayList<G> : Gee.AbstractList<G> {
		public ArrayList (GLib.EqualFunc? equal_func = null);
		public override bool add (G item);
		public override bool add_all (Gee.Collection<G> collection);
		public override void clear ();
		public override bool contains (G item);
		public override G @get (int index);
		public override int index_of (G item);
		public override void insert (int index, G item);
		public override Gee.Iterator<G> iterator ();
		public override Gee.ListIterator<G> list_iterator ();
		public override bool remove (G item);
		public override G remove_at (int index);
		public override void @set (int index, G item);
		public override Gee.List<G>? slice (int start, int stop);
		public void sort_with_data (GLib.CompareDataFunc compare);
		public GLib.EqualFunc equal_func { get; private set; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashMap<K,V> : Gee.AbstractMap<K,V> {
		public HashMap (GLib.HashFunc? key_hash_func = null, GLib.EqualFunc? key_equal_func = null, GLib.EqualFunc? value_equal_func = null);
		public override void clear ();
		public override V @get (K key);
		public override bool has (K key, V value);
		public override bool has_key (K key);
		public override Gee.MapIterator<K,V> map_iterator ();
		public override void @set (K key, V value);
		public override bool unset (K key, out V value = null);
		public override Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		public GLib.EqualFunc key_equal_func { get; private set; }
		public GLib.HashFunc key_hash_func { get; private set; }
		public override Gee.Set<K> keys { owned get; }
		public override int size { get; }
		public GLib.EqualFunc value_equal_func { get; private set; }
		public override Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashMultiMap<K,V> : Gee.AbstractMultiMap<K,V> {
		public HashMultiMap (GLib.HashFunc? key_hash_func = null, GLib.EqualFunc? key_equal_func = null, GLib.HashFunc? value_hash_func = null, GLib.EqualFunc? value_equal_func = null);
		protected override Gee.MultiSet<K> create_multi_key_set ();
		protected override Gee.Collection<V> create_value_storage ();
		protected override GLib.EqualFunc get_value_equal_func ();
		public GLib.EqualFunc key_equal_func { get; }
		public GLib.HashFunc key_hash_func { get; }
		public GLib.EqualFunc value_equal_func { get; private set; }
		public GLib.HashFunc value_hash_func { get; private set; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashMultiSet<G> : Gee.AbstractMultiSet<G> {
		public HashMultiSet (GLib.HashFunc? hash_func = null, GLib.EqualFunc? equal_func = null);
		public GLib.EqualFunc equal_func { get; }
		public GLib.HashFunc hash_func { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashSet<G> : Gee.AbstractSet<G> {
		public HashSet (GLib.HashFunc? hash_func = null, GLib.EqualFunc? equal_func = null);
		public override bool add (G key);
		public override void clear ();
		public override bool contains (G key);
		public override Gee.Iterator<G> iterator ();
		public override bool remove (G key);
		public GLib.EqualFunc equal_func { get; private set; }
		public GLib.HashFunc hash_func { get; private set; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class LinkedList<G> : Gee.AbstractList<G>, Gee.Queue<G>, Gee.Deque<G> {
		public LinkedList (GLib.EqualFunc? equal_func = null);
		public override bool add (G item);
		public override void clear ();
		public override bool contains (G item);
		public override G first ();
		public override G @get (int index);
		public override int index_of (G item);
		public override void insert (int index, G item);
		public override Gee.Iterator<G> iterator ();
		public override G last ();
		public override Gee.ListIterator<G> list_iterator ();
		public override bool remove (G item);
		public override G remove_at (int index);
		public override void @set (int index, G item);
		public override Gee.List<G>? slice (int start, int stop);
		public GLib.EqualFunc equal_func { get; private set; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class PriorityQueue<G> : Gee.AbstractQueue<G> {
		public PriorityQueue (GLib.CompareFunc? compare_func = null);
		public override bool add (G item);
		public override void clear ();
		public override bool contains (G item);
		public override int drain (Gee.Collection<G> recipient, int amount = -1);
		public override Gee.Iterator<G> iterator ();
		public override bool offer (G element);
		public override G peek ();
		public override G poll ();
		public override bool remove (G item);
		public override int capacity { get; }
		public GLib.CompareFunc compare_func { get; private set; }
		public override bool is_full { get; }
		public override int remaining_capacity { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeMap<K,V> : Gee.AbstractMap<K,V> {
		public TreeMap (GLib.CompareFunc? key_compare_func = null, GLib.EqualFunc? value_equal_func = null);
		public override void clear ();
		public override V @get (K key);
		public override bool has (K key, V value);
		public override bool has_key (K key);
		public override Gee.MapIterator<K,V> map_iterator ();
		public override void @set (K key, V value);
		public override bool unset (K key, out V value = null);
		public override Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		public GLib.CompareFunc key_compare_func { get; private set; }
		public override Gee.Set<K> keys { owned get; }
		public override int size { get; }
		public GLib.EqualFunc value_equal_func { get; private set; }
		public override Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeMultiMap<K,V> : Gee.AbstractMultiMap<K,V> {
		public TreeMultiMap (GLib.CompareFunc? key_compare_func = null, GLib.CompareFunc? value_compare_func = null);
		protected override Gee.MultiSet<K> create_multi_key_set ();
		protected override Gee.Collection<V> create_value_storage ();
		protected override GLib.EqualFunc get_value_equal_func ();
		public GLib.CompareFunc key_compare_func { get; }
		public GLib.CompareFunc value_compare_func { get; private set; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeMultiSet<G> : Gee.AbstractMultiSet<G> {
		public TreeMultiSet (GLib.CompareFunc? compare_func = null);
		public GLib.CompareFunc compare_func { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeSet<G> : Gee.AbstractSet<G>, Gee.SortedSet<G> {
		public TreeSet (GLib.CompareFunc? compare_func = null);
		public override bool add (G item);
		public override void clear ();
		public override bool contains (G item);
		public override Gee.Iterator<G> iterator ();
		public override bool remove (G item);
		public GLib.CompareFunc compare_func { get; private set; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface BidirIterator<G> : Gee.Iterator<G> {
		public abstract bool has_previous ();
		public abstract bool last ();
		public abstract bool previous ();
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Collection<G> : Gee.Iterable<G> {
		public abstract bool add (G item);
		public abstract bool add_all (Gee.Collection<G> collection);
		public abstract void clear ();
		public abstract bool contains (G item);
		public abstract bool contains_all (Gee.Collection<G> collection);
		public static Gee.Collection<G> empty<G> ();
		public abstract bool remove (G item);
		public abstract bool remove_all (Gee.Collection<G> collection);
		public abstract bool retain_all (Gee.Collection<G> collection);
		public abstract G[] to_array ();
		public abstract bool is_empty { get; }
		public abstract Gee.Collection<G> read_only_view { owned get; }
		public abstract int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Comparable<G> : GLib.Object {
		public abstract int compare_to (G object);
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Deque<G> : Gee.Queue<G> {
		public abstract int drain_head (Gee.Collection<G> recipient, int amount = -1);
		public abstract int drain_tail (Gee.Collection<G> recipient, int amount = -1);
		public abstract bool offer_head (G element);
		public abstract bool offer_tail (G element);
		public abstract G peek_head ();
		public abstract G peek_tail ();
		public abstract G poll_head ();
		public abstract G poll_tail ();
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Iterable<G> : GLib.Object {
		public abstract Gee.Iterator<G> iterator ();
		public abstract GLib.Type element_type { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Iterator<G> : GLib.Object {
		public abstract bool first ();
		public abstract G @get ();
		public abstract bool has_next ();
		public abstract bool next ();
		public abstract void remove ();
	}
	[CCode (cheader_filename = "gee.h")]
	public interface List<G> : Gee.Collection<G> {
		public static Gee.List<G> empty<G> ();
		public abstract G first ();
		public abstract G @get (int index);
		public abstract int index_of (G item);
		public abstract void insert (int index, G item);
		public abstract void insert_all (int index, Gee.Collection<G> collection);
		public abstract G last ();
		public abstract new Gee.ListIterator<G> list_iterator ();
		public abstract G remove_at (int index);
		public abstract void @set (int index, G item);
		public abstract Gee.List<G>? slice (int start, int stop);
		public abstract void sort (GLib.CompareFunc? compare_func = null);
		public abstract Gee.List<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface ListIterator<G> : Gee.BidirIterator<G> {
		public abstract void add (G item);
		public abstract int index ();
		public abstract void insert (G item);
		public abstract void @set (G item);
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Map<K,V> : GLib.Object, Gee.Iterable<Gee.Map.Entry<K,V>> {
		public abstract class Entry<K,V> : GLib.Object {
			public Entry ();
			public abstract K key { get; }
			public abstract V value { get; set; }
		}
		public abstract void clear ();
		[Deprecated]
		public abstract bool contains (K key);
		[Deprecated]
		public abstract bool contains_all (Gee.Map<K,V> map);
		public static Gee.Map<K,V> empty<K,V> ();
		public abstract V @get (K key);
		public abstract bool has (K key, V value);
		public abstract bool has_all (Gee.Map<K,V> map);
		public abstract bool has_key (K key);
		public abstract Gee.MapIterator<K,V> map_iterator ();
		[Deprecated]
		public abstract bool remove (K key, out V value = null);
		[Deprecated]
		public abstract bool remove_all (Gee.Map<K,V> map);
		public abstract void @set (K key, V value);
		public abstract void set_all (Gee.Map<K,V> map);
		public abstract bool unset (K key, out V value = null);
		public abstract bool unset_all (Gee.Map<K,V> map);
		public abstract Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		public abstract bool is_empty { get; }
		public abstract GLib.Type key_type { get; }
		public abstract Gee.Set<K> keys { owned get; }
		public abstract Gee.Map<K,V> read_only_view { owned get; }
		public abstract int size { get; }
		public abstract GLib.Type value_type { get; }
		public abstract Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface MapIterator<K,V> : GLib.Object {
		public abstract bool first ();
		public abstract K get_key ();
		public abstract V get_value ();
		public abstract bool has_next ();
		public abstract bool next ();
		public abstract void set_value (V value);
		public abstract void unset ();
	}
	[CCode (cheader_filename = "gee.h")]
	public interface MultiMap<K,V> : GLib.Object {
		public abstract void clear ();
		public abstract bool contains (K key);
		public abstract Gee.Collection<V> @get (K key);
		public abstract Gee.MultiSet<K> get_all_keys ();
		public abstract Gee.Set<K> get_keys ();
		public abstract Gee.Collection<V> get_values ();
		public abstract bool remove (K key, V value);
		public abstract bool remove_all (K key);
		public abstract void @set (K key, V value);
		public abstract int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface MultiSet<G> : Gee.Collection<G> {
		public abstract int count (G item);
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Queue<G> : Gee.Collection<G> {
		public const int UNBOUNDED_CAPACITY;
		public abstract int drain (Gee.Collection<G> recipient, int amount = -1);
		public abstract bool offer (G element);
		public abstract G peek ();
		public abstract G poll ();
		public abstract int capacity { get; }
		public abstract bool is_full { get; }
		public abstract int remaining_capacity { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Set<G> : Gee.Collection<G> {
		public static Gee.Set<G> empty<G> ();
		public abstract Gee.Set<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface SortedSet<G> : Gee.Set<G> {
		public abstract Gee.BidirIterator<G> bidir_iterator ();
		public abstract G ceil (G element);
		public abstract G first ();
		public abstract G floor (G element);
		public abstract Gee.SortedSet<G> head_set (G before);
		public abstract G higher (G element);
		public abstract Gee.BidirIterator<G>? iterator_at (G element);
		public abstract G last ();
		public abstract G lower (G element);
		public abstract Gee.SortedSet<G> sub_set (G from, G to);
		public abstract Gee.SortedSet<G> tail_set (G after);
	}
	[CCode (cheader_filename = "gee.h")]
	public static int direct_compare (void* _val1, void* _val2);
}
