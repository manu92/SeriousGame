package Modeles;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Participation extends Modele {
	private String id_utilisateur;
	private String id_partie;
	
	public Participation(String id_utilisateur, String id_partie) {
		super();
		this.id_utilisateur = id_utilisateur;
		this.id_partie = id_partie;
	}

	public static void addParticipant(Utilisateur user, Partie partie) throws SQLException {
		String query = "INSERT into jouer VALUES('"+user.getId()+"', '"+partie.getId_partie()+"')";
		System.out.println("QUERY :"+query);
		update(query);
	}
	
	public static List<Participation> all() throws SQLException {
		List<Participation> results = new ArrayList<Participation>();
		
		ResultSet resultat = query( "SELECT id_utilisateur, id_partie FROM jouer");
		while( resultat.next() ) {
			Participation participation = new Participation(
					resultat.getString( "id_utilisateur" ),
					resultat.getString( "id_partie" )
			);
			results.add(participation);
		}
		return results;
	}
	
	public static List<Participation> find_by_partie(Partie partie) throws SQLException {
		List<Participation> results = Participation.all();
		List<Participation> participations = new ArrayList<Participation>();
		
		for (Participation participation : results) {
			if(participation.getId_partie() == partie.getId_partie()) {
				participations.add(participation);
			}
		}
		
		return participations;
	}

	public String getId_utilisateur() {
		return id_utilisateur;
	}

	public void setId_utilisateur(String id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}

	public String getId_partie() {
		return id_partie;
	}

	public void setId_partie(String id_partie) {
		this.id_partie = id_partie;
	}
}