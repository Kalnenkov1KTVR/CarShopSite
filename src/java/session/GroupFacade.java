/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Group;
import entity.User;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class GroupFacade extends AbstractFacade<Group> {

    @EJB
    UserFacade regUserFacade;

    @PersistenceContext(unitName = "SecurityBlogPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public GroupFacade() {
        super(Group.class);
    }

    public List<User> getUsersInGroup(Long groupId) {
        Group groupById = this.find(groupId);
        List<User> allUsers = regUserFacade.findAll();
        List<User> usersInGroup = new ArrayList<>();
        for (int i = 0; i < allUsers.size(); i++) {
            User user = allUsers.get(i);
            if (user.getGroups().contains(groupById)) {
                usersInGroup.add(user);
            }
        }
        return usersInGroup;
    }

    public Group getGroupGUESTS() {
        Group groupGUESTS = null;
        try {
            groupGUESTS = (Group) getEntityManager().createQuery("SELECT g FROM Group g WHERE g.groupName=:guests")
                    .setParameter("guests", "GUESTS")
                    .getSingleResult();
        } catch (Exception e) {
            groupGUESTS = new Group("GUESTS");
            getEntityManager().persist(groupGUESTS);
            groupGUESTS = (Group) getEntityManager().createQuery("SELECT g FROM Group g WHERE g.groupName=:guests")
                    .setParameter("guests", "GUESTS")
                    .getSingleResult();
        }

        return groupGUESTS;
    }

    public void removeGroupById(Long groupId) {
        Group group = this.find(groupId);
        if (group != null) {
            this.remove(group);
        }
    }

}
